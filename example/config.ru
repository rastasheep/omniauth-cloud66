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
  provider :cloud66, "05980cb860ac69708a131dc34df761c41d1217c85963e439884c4eb93085365d", "c46b39f40cf27e13e9fd295919a9c811528dac42d6e83b5bc707ee1d779d74bd", scope: "public redeploy"
end
