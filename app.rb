require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:square_new)
end

get("/square/new") do
  erb(:square_new)
end

get("/square_root/new") do
  erb(:squareroot_new)
end

get("/random/new") do
  erb(:random_new)
end

get("/payment/new") do
  erb(:payment_new)
end
