class Villager < ApplicationRecord
  has_one :villagers_gender
  validates :id, presence: true
  validates :title, presence: true
  validates :body, presence: true

def self.search(search)
  if search
    villagers_name = Villager.find_by(name: villagers)
    if search
      self.where(id: villager)
    else
      @Villagers = Villager.all
    end
  else
    @Villagers = Villager.all
  end
end
end

