class ChangeColumnCity < ActiveRecord::Migration
  def change
      change_column :cities, :lat, :float
    change_column :cities, :long, :float
  end
end
