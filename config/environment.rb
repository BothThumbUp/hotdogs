require 'sinatra/activerecord'
require 'mysql2'

configure :production, :development do

  set :database_file, "config/database.yml"

#	ActiveRecord::Base.establish_connection(
#	  :adapter  => "mysql",
#	  :host     => "localhost",
#   :user     => "root",
#   :database => "hotdogs_development"
#	)
end
