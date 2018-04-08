require 'sinatra'


# instructions for what to do when user visits '/home' will go here

get '/home' do
  erb :index
end
