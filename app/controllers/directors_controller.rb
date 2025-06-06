class DirectorsController < ApplicationController
  def index
    @directors = Director.all
  end

  def show
    @director = Director.find(params.fetch("id"))
  end

  def create
    director = Director.new
    director.name = params.fetch("query_name")
    director.image = params.fetch("query_image")
    director.save
    redirect_to("/directors")
  end

  def update
    director = Director.find(params.fetch("id"))
    director.image = params.fetch("query_image")
    director.save
    redirect_to("/directors/#{director.id}")
  end

  def destroy
    director = Director.find(params.fetch("id"))
    director.destroy
    redirect_to("/directors")
  end
end
