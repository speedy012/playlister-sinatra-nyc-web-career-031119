class SongsController < ApplicationController
  # register Sinatra::ActiveRecordExtension
  # set :session_secret, "my_application_secret"
  # set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :index
  end

  get '/songs' do
    erb :song_index
  end

  get '/songs/:slug' do
    erb(:song_show)
  end
end
    # binding.pry
