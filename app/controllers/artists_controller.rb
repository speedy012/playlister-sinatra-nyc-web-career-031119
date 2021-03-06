class ArtistsController < ApplicationController
  register Sinatra::ActiveRecordExtension
  set :session_secret, "my_application_secret"
  set :views, Proc.new { File.join(root, "../views/") }

  get '/artists' do

    erb :artist_index
  end

  get '/artists/:slug' do
    erb(:artist_show)
  end

end
