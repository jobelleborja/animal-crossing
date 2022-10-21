class VillagersController < ApplicationController
  def index
    @villagers = Villager.all
  end
  def show
    @villager = Villager.find(params[:id])
  end
  def search
    search = "%#{params[:words]}%"
    @villagers = Villager.where("title LIKE ?", search)
  end
end
