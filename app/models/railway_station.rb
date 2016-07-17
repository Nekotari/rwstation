class RailwayStation < ActiveRecord::Base
  has_many :trains
  has_many :railway_stations_routes
  has_many :routes, through: :railway_stations_routes

  #scope :ordered, -> { joins(:railway_stations_routes).where(["railway_stations_routes.route_id = ?", route]).order(:num) }

  def update_position(route, num)
    railway_stations_routes.update(route, num: num)
  end
end
