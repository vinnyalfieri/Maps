class ChangeDatatypeCity < ActiveRecord::Migration
  def change
    change_column :cities, :lat, :decimal
    change_column :cities, :long, :decimal
  end
end
