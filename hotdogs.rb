require 'sinatra'
require './config/environment'
require './models/shirt'
require 'sinatra/base'

class Hotdogs < Sinatra::Base
#  set :public_folder => "public", :static => true

  get '/' do
    erb :welcome
  end
  
  get '/shirts' do
    @shirts = Shirt.all
    erb :shirts
  end
end
