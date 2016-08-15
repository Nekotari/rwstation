class RailwayStation < ActiveRecord::Base
  has_many :trains
  has_many :railway_stations_routes
  has_many :routes, through: :railway_stations_routes

  scope :ordered, -> { joins(:railway_stations_routes).order("railway_stations_routes.position").uniq }

  def update_position(route, position)
    station_route = station_route(route)
    station_route.update(position: position) if station_route
  end

  def position_in(route)
    station_route(route).try(:position)
  end

  def update_arrive(route, arrive)
    station_route = station_route(route)
    station_route.update(arrive: arrive) if station_route
  end

  def arrive(route)
    station_route(route).try(:arrive)
  end

  def update_departure(route, depart)
    station_route = station_route(route)
    station_route.update(depart: depart) if station_route
  end

  def departure(route)
    station_route(route).try(:depart)
  end

  protected

  def station_route(route)
    @station_route ||= railway_stations_routes.where(route: route).first
  end
end
