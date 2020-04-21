require("sinatra")
require("sinatra/contrib/all") if development?
require("pry")
require_relative("./models/film")
also_reload("./models/*")

get "/all_films" do
    @films = Film.all()
    erb(:result)
  end