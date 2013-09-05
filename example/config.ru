require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'omniauth-cloud66'

get '/' do
  redirect '/auth/cloud66'
end

get '/auth/:provider/callback' do
  content_type 'text/plain'
  request.env['omniauth.auth'].to_hash.inspect rescue "No Data"
end

get '/auth/failure' do
  content_type 'text/plain'
  request.env['omniauth.auth'].to_hash.inspect rescue "No Data"
end

use Rack::Session::Cookie

use OmniAuth::Builder do
  provider :cloud66, ENV['CONSUMER_KEY'], ENV['CONSUMER_SECRET']
end
