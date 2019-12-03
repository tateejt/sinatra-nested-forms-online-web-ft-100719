require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end
    
    get '/new' do 
      erb :'pirates/new'
    end
    
    post '/pirates' do 
      @pirates = Pirates.new(params[:pirate])
      
      params[:pirate][:ships].each do |details|
        ship.new
      end
    end
  end
end
