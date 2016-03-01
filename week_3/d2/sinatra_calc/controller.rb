require 'sinatra'
require 'sinatra/contrib/all'

require_relative './models/calculator'
require 'json'

get '/all/:num1/:num2' do

  content_type(:json)

  calculator = Calculator.new(params[:num1].to_i, params[:num2].to_i)
  result = {
    add: calculator.add(),
    subtract: calculator.subtract(),
    multiply: calculator.multiply(),
    divide: calculator.divide()
  }

  return result.to_json()

end

get '/add/:num1/:num2' do
  calculator = Calculator.new(params[:num1].to_i, params[:num2].to_i)
  @calculation = calculator.add
  erb :result 
end

get '/subtract/:num1/:num2' do
  calculator = Calculator.new(params[:num1].to_i, params[:num2].to_i)
  @calculation = calculator.subtract
  erb :result
end

get '/multiply/:num1/:num2' do
  calculator = Calculator.new(params[:num1].to_i, params[:num2].to_i)
  @calculation = calculator.multiply
  erb :result
end

get '/divide/:num1/:num2' do
  calculator = Calculator.new(params[:num1].to_i, params[:num2].to_i)
  @calculation = calculator.divide
  erb :result
end