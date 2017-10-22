require_relative "spec_helper"
require_relative "../hotdogs.rb"

def app
  Hotdogs
end

describe Hotdogs do
  it "responds with a welcome message" do
    get '/'

    last_response.body.must_include 'Welcome to the Sinatra Template!'
  end
end
