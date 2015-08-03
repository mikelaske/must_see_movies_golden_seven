class MoviesController < ApplicationController

  def index
    @list_of_movies = Movie.all
  end

  def show
    @movies = Movie.find(params["id"])
  end

  def destroy
    @movies = Movie.find(params["id"])

    @movies.destroy

    redirect_to("http://localhost:3000/movies")
  end

  def new_form
  end

  def edit_form
    @movies = Movie.find(params["id"])
  end

  def create_row
    p = Movie.new
    p.title = params["title"]
    p.year = params["year"]
    p.duration = params["duration"]
    p.description = params["description"]
    p.image_url = params["image_url"]
    p.save

    redirect_to("http://localhost:3000/movies")
  end

  def update_row
    p = Movie.find(params["id"])
    p.title = params["title"]
    p.year = params["year"]
    p.duration = params["duration"]
    p.description = params["description"]
    p.image_url = params["image_url"]
    p.save

    redirect_to("http://localhost:3000/movies")
  end

end
