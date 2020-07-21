require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    post '/pirates' do
      # puts params["pirates"]["name"]
      @pirate1 = Pirate.new(params[:pirate])
      @ship1 = Ship.new(params[:pirate][:ships][0])
      # binding.pry
      @ship2 = Ship.new(params[:pirate][:ships][1])
      # puts @pirate1.name
      # binding.pry
      erb :"pirates/show"
    end

    get '/new' do
      erb :"pirates/new"
    end

  end
end
