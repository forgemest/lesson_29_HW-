require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, {adapter: "sqlite3", database: "barbershop.db"}

class Client < ActiveRecord::Base
end


# before do
# 	@clients = client.all
# end

get '/' do
	erb :index
end

get '/visit' do
	erb :visit
end



post '/visit' do
  c = Client.new params[:client]
  c.save
erb :visit 

end




# post '/visit' do
#   @username = params[:username]
#   @phone = params[:phone]
#   @datetime = params[:datetime]
#   @barber = params[:barber]


# client = Client.create(name: @username, phone: @phone, datestamp: @datetime, barber: @barber)

# erb :visit 

# end

get '/contacts' do
	erb :contacts
end


