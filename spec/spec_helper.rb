ENV['RACK_ENV'] = 'test'

# require("bundler/setup")
# Bundler.require(:default, :test)

require("rspec")
require("pg")
require('sinatra/activerecord')
require('shoulda-matchers')

Dir[File.dirname(__FILE__) + '/../lib/*.rb'].each { |file| require file }

RSpec.configure do |config|
  config.after(:each) do

    Band.all().each() do |band|
      band.destroy()
    end

    Venue.all.each() do |venue|
      venue.destroy()
    end


  end
end