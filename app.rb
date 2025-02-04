require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:square_new)
end

get("/square/new") do
  erb(:square_new)
end

get("/square/results") do
  @number = params.fetch("number").to_f
  @result = (@number ** 2).round(4)
  erb(:square_results)
end

get("/square_root/new") do
  erb(:squareroot_new)
end

get("/square_root/results") do
  @number = params.fetch("number").to_f
  @result = (@number ** 0.5).round(3)
  erb(:squareroot_results)
end

get("/random/new") do
  erb(:random_new)
end

get("/random/results") do
  @min = params.fetch("minimum").to_f
  @max = params.fetch("maximum").to_f
  @result = rand(@min..@max)
  erb(:random_results)
end

get("/payment/new") do
  erb(:payment_new)
end

get("/payment/results") do
  @apr = params.fetch("apr").to_f
  @years = params.fetch("years").to_i
  @principal = params.fetch("principal").to_f
  @result = (@apr / 1200 * @principal) / (1 - (1 + @apr / 1200) ** (-@years * 12))
  erb(:payment_results)
end
