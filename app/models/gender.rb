class Gender < ApplicationRecord
  has_many :villagers
  validates :title, presence: true
end
