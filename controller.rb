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
  # friends = ["Joey", '"Pheobe', "Monica", "Chandler", "Rachel", "Ross"]
  @a_films = Film.all()
  number = params["number"].to_i
  return @a_films[number].to_s
  # erb(:index)
end

# get '/friends/:number' do
#   friends = ["Joey",'"Pheobe',"Monica","Chandler","Rachel","Ross"]
#   index = params[:number].to_i - 1 # -1 so people to help people that don't know arrays start at 0
#   return friends[index]
# end

# pry.bindings()# nil
# nil
