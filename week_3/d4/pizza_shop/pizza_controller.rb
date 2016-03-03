require 'sinatra'
require 'sinatra/contrib/all' if development?
require_relative './models/pizza'
require 'json'

get '/pizza' do
  @pizzas = Pizza.all
  erb :index
end

get '/pizza/new' do
  erb :new
end

# SHOW
get '/pizza/:id' do
  @pizza = Pizza.select(params[:id])
  erb :show
end

# EDIT
get '/pizza/:id/edit' do
  @pizza = Pizza.select(params[:id])
  erb :edit
end

# UPDATE
post '/pizza/:id' do
@pizza = Pizza.update(params)
redirect to "/pizza/#{params[:id]}"
end

# DESTROY
post "/pizza/:id/delete" do
  Pizza.destroy(params[:id])
  redirect to '/pizza'
end

post '/pizza' do 
  @pizza = Pizza.new(params)
  @pizza.save
  erb :create
end