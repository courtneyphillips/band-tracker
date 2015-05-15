require('bundler/setup')
require("pry")
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file}

get ("/") do
  erb :index
end

delete('/band/:id') do
  @band = Band.find(params.fetch("id").to_i())
  @band.delete()
  redirect to ('/bands')
end

get('/bands') do
  @bands = Band.all
  erb(:bands)
end

get('/add_venue') do
  erb(:add_venue)
end

post('/venues') do
  name = params.fetch("name")
  @venue = Venue.create({:name => name})
  if @venue.save()
    redirect to('/bands')
  else
    erb(:errors)
  end
end

get('/add_band') do
  @venues = Venue.all
  @bands = Band.all
  erb(:add_band)
end

post('/bands') do
  @bands = Band.all
  name = params.fetch("name")
  venues = params[:venue]
  @band = Band.create({:name => name})
  if venues
  venues.each() do |venue|
    found_venue = Venue.find(venue)
    @band.venues.push(found_venue)
  end
  end
  if @band.save()
    erb(:bands)
  else
  erb(:errors)
end
end

get('/bands/:id') do
  @band = Band.find(params.fetch('id'))
  erb(:band)
end

get('/bands/:id/edit') do
  @band = Band.find(params.fetch('id'))
  @venues = Venue.all
  erb(:edit_band)
end

patch('/bands/:id') do
  id = params.fetch("id")
  @band = Band.find(id)
  if params[:venue]
    found_venue = Venue.find(params.fetch("venue"))
    @band.venues.push(found_venue)
  end
  if params[:name]
    new_name = params.fetch("name")
  else
    new_name = @band.name()
  end
    @band.update({:name => new_name})
    erb(:band)
end
