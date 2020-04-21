require("sinatra")
require("sinatra/contrib/all") if development?
require("pry")
require_relative("./models/film")
also_reload("./models/*")

get "/films" do
  @num = 0
  @films = Film.all()
  erb(:index)
end

get "/films/:number" do
  @films = Film.all()
  erb(:films)
end

# pry.bindings()# nil
# nil
