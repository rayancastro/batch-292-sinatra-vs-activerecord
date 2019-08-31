require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

get "/" do
  # Insert Code
  @restaurants = Restaurant.all
  erb :index
end

get '/restaurants/new' do
  erb :new
end

get '/restaurants/:id' do
  @restaurant = Restaurant.find(params[:id])

  erb :show
end

post '/restaurants' do
  # Create a restaurant with the data the user provided

  name = params[:name]
  address = params[:address]
  category = params[:category]
  restaurant = Restaurant.new(
    name: name,
    address: address,
    category: category
  )
  restaurant.save

  # Redirects the user to the homepage

  redirect '/'
end
