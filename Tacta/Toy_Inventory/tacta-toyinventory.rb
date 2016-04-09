require "sinatra"
require "./inventory_file"

set :port, 4567

get "/"  do
   "<h1>The Baby Toy Store</h1>"
end


get "/content" do
  @toyinventory = read_toyinventory
  erb :"content/index"
end

get '/content/new' do
   erb :'content/new'
end

get '/content/:i' do
   @i = params[:i].to_i
   toyinventory = read_toyinventory
   @toyinventory = toyinventory[@i]
   erb :'content/show'
end

post '/content' do
   new_inventory = { name: params[:name], id: params[:id], quantity: params[:quantity] }

   toyinventory = read_toyinventory
   toyinventory << new_inventory
   write_toyinventory( toyinventory )

   i = toyinventory.length - 1

   redirect "/content/#{i}"
end
