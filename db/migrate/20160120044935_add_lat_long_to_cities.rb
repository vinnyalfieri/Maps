class AddLatLongToCities < ActiveRecord::Migration
  def change
    add_column :cities, :lat, :integer
    add_column :cities, :long, :integer
  end
end
