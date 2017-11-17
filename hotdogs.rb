require 'sinatra'
require './config/environment'
require './models/shirt'
require './models/post'
require 'sinatra/base'
require 'paypal-sdk-rest'

class Hotdogs < Sinatra::Base
#  set :public_folder => "public", :static => true
  PayPal::SDK::Core::Config.load('config/paypal.yml',  ENV['RACK_ENV'] || 'development')

  get '/' do
    erb :welcome
  end
  
  get '/shirts' do
    @shirts = Shirt.all
    erb :shirts
  end
  
  get '/shirt' do
    @shirt = Shirt.new
    erb :new_shirt
  end

  get '/post' do
    @post = Post.new
    erb :new_post
  end
end

