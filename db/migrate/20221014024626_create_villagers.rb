class CreateVillagers < ActiveRecord::Migration[7.0]
  def change
    create_table :villagers do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
