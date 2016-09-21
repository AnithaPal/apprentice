class ChangeDistanceTypeInLocations < ActiveRecord::Migration
  def change
    remove_column :locations, :distance
    remove_column :locations, :bearing
    add_column :locations, :distance, :decimal, default: 0
    add_column :locations, :bearing, :decimal, default: 0
  end
end
