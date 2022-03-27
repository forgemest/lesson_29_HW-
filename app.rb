require 'sinatra'
require 'sinatra/reloader'
get '/index' do
	erb :index
end

get '/visit' do
	erb :visit
end

get '/contacts' do
	erb :contacts
end


