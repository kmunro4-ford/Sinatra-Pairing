require 'sinatra'
require 'sinatra/reloader'

get '/' do
  "Hello"
end

get '/secret' do
  "Crows are cool"
end

get '/public' do
  "Dogs are my fav"
end

get '/random-cat' do
  @name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/nc' do
  p params
  erb(:name_form)
end
