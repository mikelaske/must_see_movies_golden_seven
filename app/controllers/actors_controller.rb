class ActorsController < ApplicationController

  def index
    @list_of_actors = Actor.all
  end

  def show
    @actors = Actor.find(params["id"])
  end

  def destroy
    @actors = Actor.find(params["id"])

    @actors.destroy

    redirect_to("http://localhost:3000/actors")
  end

  def new_form
  end

  def edit_form
    @actors = Actor.find(params["id"])
  end

  def create_row
    p = Actor.new
    p.name = params["name"]
    p.bio = params["bio"]
    p.dob = params["dob"]
    p.image_url = params["image_url"]
    p.save

    redirect_to("http://localhost:3000/actors")
  end

  def update_row
    p = Actor.find(params["id"])
    p.name = params["name"]
    p.bio = params["bio"]
    p.dob = params["dob"]
    p.image_url = params["image_url"]
    p.save

    redirect_to("http://localhost:3000/actors")
  end

end
