require('bundler/setup')
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file}

get "/" do
  erb :index
end




#delete bands, as listed on band erb; code tentative

delete('/band/:id') do
  @band = Band.find(params.fetch("id").to_i())
  @band.delete()
  @bands = Band.all
redirect to ('/bands')
