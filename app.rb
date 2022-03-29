require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, {adapter: "sqlite3", database: "barbershop.db"}

class Client < ActiveRecord::Base
end


get '/' do
	erb :index
end

get '/visit' do
	erb :visit
end

get '/contacts' do
	erb :contacts
end


