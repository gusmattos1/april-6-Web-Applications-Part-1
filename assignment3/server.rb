require 'sinatra'


# instructions for what to do when user visits '/home' will go here

get '/home' do
  erb :index
end

get '/portifolio' do
  erb :portifolio
end

get '/about_me' do
  @skills = ['git', 'HTML', 'CSS', 'Ruby']
  @interests = ['cats', 'art', 'music', 'films', 'coffee']
  erb :about_me
end

get '/favourites' do
  @favourites = [
    "http://www.facebook.com", "http://www.instagram.com", "http://www.google.com", "http://www.g1.com"
  ]
  erb :favourites
end

get '/' do
  redirect to('/home')
end

get '/gallery' do
  redirect to('/portifolio')
end
