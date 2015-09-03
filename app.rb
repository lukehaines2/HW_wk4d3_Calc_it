require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'

require_relative './views/basic_calc'

get '/' do 
  @title = 'HOME'
  erb :home
end


post '/calculate' do
  @basic_calc = Basic_Calc.work params[:word]
  erb :home
end

post '/calculate' do
  @basic_calc = Basic_Calc.work params[:word]
  erb :home
end


post '/navigate' do
  case params[:destination].downcase
  when 'Basic Calc' then redirect to '/basic'
  when 'advanced calc' then redirect to '/advanced'
  when 'bmi' then redirect to '/BMI'
  when 'trip' then redirect to '/trip'
  when 'mortgage' then redirect to '/mortgage'
  else
    @error = 'Invalid page selected you moron!'
    erb :home
  end
end


get '/basic' do
  @title = 'Basic Calc'
  erb :basic
end

get '/advanced' do
  @title = 'Advanced Calc'
  erb :advanced
end

get '/bmi' do
  @title = 'BMI'
  erb :bmi
end

get '/trip' do
  @title = 'trip'
  erb :trip
end

get '/mortgage' do
  @title = 'mortgage'
  erb :mortgage
end


