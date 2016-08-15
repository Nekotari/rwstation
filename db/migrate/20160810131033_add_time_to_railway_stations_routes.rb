class AddTimeToRailwayStationsRoutes < ActiveRecord::Migration
  def change
    add_column :railway_stations_routes, :arrive, :time
    add_column :railway_stations_routes, :depart, :time
  end
end
