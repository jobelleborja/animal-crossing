class VillagersController < ApplicationController
  def index
    @Villagers = Villager.search(params[:search])
    @villagers = Villager.all
  end
  def show
    @villagers = Villager.find(params[:id])
  end
end
