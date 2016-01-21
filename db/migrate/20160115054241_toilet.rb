class Toilet < ActiveRecord::Migration
  def change
      create_table :toilets do |t|
      t.string :address
      t.string :title
      t.integer :lat
      t.integer :long
      t.text :description
      t.decimal :price, :precision => 8, :scale => 2
      t.integer :city_id
      t.timestamps
    end
  end
end
