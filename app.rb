require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, {adapter: "sqlite3", database: "barbershop.db"}

class Client < ActiveRecord::Base
  validates :name, presence: true
  validates :phone, presence: true
  validates :datestamp, presence: true

end

get '/' do 
	erb :index
end

get '/visit' do
  @c = Client.new
	erb :visit
end


post '/visit' do
  @c = Client.new params[:client]
  if @c.save
erb "<h2>Спасибо вы записались</h2>"
     else
  # erb "<h2>Ошибка</h2>"
  @error = @c.errors.full_messages.first
erb :visit 

     end
  end

get '/contacts' do
	erb :contacts
end


