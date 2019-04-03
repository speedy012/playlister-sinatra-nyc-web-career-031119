class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  set :session_secret, "my_application_secret"
  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :index
  end

  get '/songs' do

    erb :song_index
  end

  get '/genres' do
    erb :genre_index
  end


  get '/songs/slug' do

  end
end
