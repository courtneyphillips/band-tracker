require('bundler/setup')
require("pry")
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file}

get ("/") do
  erb :index
end



#delete bands, as listed on band erb; code tentative

delete('/band/:id') do
  @band = Band.find(params.fetch("id").to_i())
  @band.delete()
  @bands = Band.all
redirect to ('/bands')
end

get('/bands') do
  @bands = Band.all
  erb(:bands)
end

get('/venues') do
  erb(:venues)
end

get('/add_venue') do
  erb(:add_venue)
end

post('/venues') do
  name = params.fetch("name")
  Venue.create({:name => name})
  erb(:venues)
end


get('/add_band') do
  @venues = Venue.all
  @bands = Band.all
  erb(:add_band)
end

post('/bands') do
  @bands = Band.all
  name = params.fetch("name")
  venues = params.fetch("venue")
  new_band = Band.create({:name => name})
  venues.each() do |venue|
    found_venue = Venue.find(venue)
    new_band.venues.push(found_venue)
  end
  erb(:bands)
end
