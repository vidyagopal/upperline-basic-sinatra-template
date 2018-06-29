require './config/environment'
require './app/models/sample_model'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
     erb :welcome
     erb :index
  end

  get '/travel_location' do
    erb :welcome
  end

  get '/weather' do
    erb :welcome
  end

  get '/about' do
    erb :about
  end

  get '/contact' do
    erb :contact
  end
  post '/travel_location' do
    if params[:location] == "Miami"
      @location = "Miami"
    elsif params[:location] == "Los Angeles"
      @location = "Los Angeles"
    elsif params[:location] == "New York"
      @location = "New York"
    elsif params[:location] == "Atlanta"
      @location = "Atlanta"
    else
      @location = ""
    end
    erb :travel_location
  end

  post '/weather' do
    if params[:miami_weather] == "Summer"
      @weather = "Summer"
      @location = "Miami"
    elsif params[:miami_weather] == "Winter"
      @weather = "Winter"
      @location = "Miami"
    elsif params[:los_angeles_weather] == "Summer"
      @weather = "Summer"
      @location = "Los Angeles"
    elsif params[:los_angeles_weather] == "Winter"
      @weather = "Winter"
      @location = "Los Angeles"
    elsif params[:new_york_weather] == "Summer"
      @weather = "Summer"
      @location = "New York"
    elsif params[:new_york_weather] == "Winter"
      @weather = "Winter"
      @location = "New York"
    elsif params[:atlanta_weather] == "Summer"
      @weather = "Summer"
      @location = "Atlanta"
    elsif params[:atlanta_weather] == "Winter"
      @weather = "Winter"
      @location = "Atlanta"
    end
    erb :weather
  end
end
