class AddStationNumToRoute < ActiveRecord::Migration
  def change
    add_column :railway_stations_routes, :num, :integer
  end
end
