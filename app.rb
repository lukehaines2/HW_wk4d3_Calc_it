require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'

require_relative '/public/styles'
require_relative '/views/basic_calc'


get '/' do 
  @title = 'home'
  erb :home

end
