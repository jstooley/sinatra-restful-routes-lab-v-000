class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
  get '/' do
    erb :index
  end

  get '/recipe' do
    erb :'recipes/show'
  end

  post '/recipes/new' do
    erb :'recipes/new'
  end
end
