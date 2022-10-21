class VillagersController < ApplicationController
  def index
    @Villagers = Villager.search(params[:search])
    @villagers = Villager.all
  end
end
