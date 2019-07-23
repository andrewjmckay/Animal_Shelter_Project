require('sinatra')
require('sinatra/reloader')
# require('pry-byebug')
# difference between require pry and require prybug
require_relative('./models/owner.rb')
require_relative('./models/animal.rb')
also_reload('./models/*')

# home

get '/' do
  @animals = Animal.all()
  erb(:"home")
end

# show all animals

get '/shelter/animals' do
  @animals = Animal.all()
  erb(:"animals/index")
end

# show all owners

get '/shelter/owners' do
  @owners = Owner.all
  erb(:"owners/index")
end

# assign animal to new owner
get '/shelter/animals' do
  @animals = Animal.all()
  erb(:"animals/assign")
end
