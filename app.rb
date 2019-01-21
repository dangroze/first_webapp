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
get '/random-cat' do
  @random_name = ["Wilfred","Sylvester","Grumpy"].sample
  erb(:index)
end
post '/named-cat' do
  p params
  @name = params[:name]
  @age = params[:age]
  erb(:index)
end
get '/post-cat' do
  erb(:cat_form)
end
