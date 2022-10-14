class AddGenderToVillager < ActiveRecord::Migration[7.0]
  def change
    add_reference :villagers, :gender, null: false, foreign_key: true
  end
end
