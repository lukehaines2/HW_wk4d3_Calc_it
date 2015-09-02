require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'

require_relative './views/basic_calc'

get '/' do 
  @title = 'HOME'
  erb :home
end

post '/navigate' do
  case params[:destination].downcase
  when 'Basic Calc' then redirect to '/basic'
  when 'Advanced Calc' then redirect to '/advanced'
  when 'BMI' then redirect to '/BMI'
  when 'trip' then redirect to '/trip'
  when 'mortgage' then redirect to '/mortgage'
  else
    @error = 'Invalid page selected you moron!'
    erb :home
  end
end


