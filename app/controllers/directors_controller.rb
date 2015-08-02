class DirectorsController < ApplicationController

  def index
    @list_of_directors = Director.all
  end

  def show
    @directors = Director.find(params["id"])
  end

  def destroy
    @directors = Director.find(params["id"])

    @directors.destroy

    redirect_to("http://localhost:3000/directors")
  end

  def new_form
  end

  def edit_form
    @directors = Director.find(params["id"])
  end

  def create_row
    p = Director.new
    p.name = params["name"]
    p.bio = params["bio"]
    p.dob = params["dob"]
    p.image_url = params["image_url"]
    p.save

    redirect_to("http://localhost:3000/directors")
  end

  def update_row
    p = Director.find(params["id"])
    p.name = params["name"]
    p.bio = params["bio"]
    p.dob = params["dob"]
    p.image_url = params["image_url"]
    p.save

    redirect_to("http://localhost:3000/directors")
  end

end
