class PlanetsController < ApplicationController

def index
@planets =  Planet.all
end
def new
  #form for new planet
end

def create
  Planet.create(params[:planet])
  redirect_to(planets_path)
end

def show
  @planet = Planet.find(params[:id])
end

def delete

  Planet.find(params[:id]).delete
  redirect_to(planets_path)
end

def edit
  @planet = Planet.find(params[:id])
  @id = @planet.id
end

def update
  binding.pry
  Planet.find(params[:id]).update_attributes(params[:planet])
  redirect_to(planets_path)
end







end