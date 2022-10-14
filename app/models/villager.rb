class Villager < ApplicationRecord
  has_one :villagers_gender
  validates :id, :name, :saying, presence: true
end
