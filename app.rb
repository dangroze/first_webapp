require 'sinatra'

set :session_secret, 'super secret'

get '/secret' do
  "Hello Dan"
end
get '/age' do
  "You are very old"
end
get '/mood' do
  "You are moody"
end
get '/cat' do
  "<div>
    <img src='http://bit.ly/1eze8aE'>
  </div>"
end
