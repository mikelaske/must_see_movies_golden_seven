class DirectorsController < ApplicationController

  def index
    @directors = Director.all
  end

  def show
    @directors = Director.find(params["id"])
  end

  def destroy
    @directors = Director.find(params["id"])

    @directors.destroy

    redirect+to("http://localhost:3000/directors")
  end
end
