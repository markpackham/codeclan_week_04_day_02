require("sinatra")
require("sinatra/contrib/all") if development?
require("pry")
require_relative("./models/film")
also_reload("./models/*")

get "/films" do
  @films = Film.all()
  erb(:index)
end

get "/films" do
  @films = ()
  erb(:index)
end

# pry.bindings()
# nil
