require("sinatra")
require("sinatra/contrib/all") if development?
require("pry")
require_relative("./models/film")
also_reload("./models/*")

get "/films" do
  @films = Film.all()
  erb(:index)
end

get "/films/:number" do
  erb(:films)
end

# get '/friends/:number' do
#   friends = ["Joey",'"Pheobe',"Monica","Chandler","Rachel","Ross"]
#   index = params[:number].to_i - 1 # -1 so people to help people that don't know arrays start at 0
#   return friends[index]
# end

# pry.bindings()# nil
# nil
