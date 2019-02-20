require './environment'
require 'pry'
require_relative 'app/models/pirate'

module FormsLab
  class App < Sinatra::Base

    set :views, "views/pirates"

    get '/' do

      erb :root
    end

    get '/new' do

      erb :new
    end

    post '/pirates' do
      @pirate =  Pirate.new(params[:pirate])
      params[:pirate][:ships].each do |info|
        Ship.new(info)
      end
      @first_ship = Ship.all.first
      @second_ship = Ship.all.second

      erb :show
    end


  end
end
