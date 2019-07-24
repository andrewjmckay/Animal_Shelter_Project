require('sinatra')
require('sinatra/reloader')
# require('pry-byebug')
# difference between require pry and require prybug
require_relative('./models/owner.rb')
require_relative('./models/animal.rb')
also_reload('./models/*')

# home

get '/' do
  erb(:"home")
end

# show all animals

get '/animals' do
  @animals = Animal.all()
  erb(:"animals/index")
end

# show all owners

get '/owners' do
  @owners = Owner.all
  erb(:"owners/index")
end

# assign animal to new owner
get '/animals/:id/edit' do
  @animal = Animal.find(params[:id])
  @owners = Owner.all()
  erb(:"animals/edit")
end
