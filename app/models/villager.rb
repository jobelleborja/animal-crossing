class Villager < ApplicationRecord
  has_one :villagers_gender
  validates :id, presence: true
  validates :title, presence: true
  validates :body, presence: true
end
