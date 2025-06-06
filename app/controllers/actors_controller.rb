class ActorsController < ApplicationController
  def index
    @actors = Actor.all
  end

  def show
    @actor = Actor.find(params.fetch("id"))
  end

  def create
    actor = Actor.new
    actor.name = params.fetch("query_name")
    actor.image = params.fetch("query_image")
    actor.save
    redirect_to("/actors")
  end

  def update
    actor = Actor.find(params.fetch("id"))
    actor.image = params.fetch("query_image")
    actor.save
    redirect_to("/actors/#{actor.id}")
  end

  def destroy
    actor = Actor.find(params.fetch("id"))
    actor.destroy
    redirect_to("/actors")
  end
end
