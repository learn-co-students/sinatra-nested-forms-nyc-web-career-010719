require './environment'
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
      params[:pirate][:ships].each do |ship_stuff|
        Ship.new(ship_stuff)
      end

      @ship1 = Ship.all[0]
      @ship2 = Ship.all[1]

      @pirate = Pirate.new(params[:pirate])
      erb :show
    end

  end # class
end # module
