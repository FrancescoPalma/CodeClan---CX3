require 'sinatra'
require 'sinatra/contrib/all' if development?
require_relative './models/pizza'
require 'json'

get '/pizza' do
  @pizzas = Pizza.all
  erb :index
end

# get '/pizza' do
#   content_type(:json)
#   @pizzas = Pizza.all
#   result = @pizzas.map do |p| 
#     {:first_name => p.first_name,
#      :last_name => p.last_name}
#   end
#   return result.to_json
# end

get '/pizza/new' do
  erb :new
end

post '/pizza' do 
  @pizza = Pizza.new(params)
  @pizza.save
  erb :create
end