class Train < ActiveRecord::Base
  belongs_to :route
  has_many :tickets
  belongs_to :current_station, class_name: 'RailwayStation', foreign_key: :current_station_id
  has_many :cars

  # def coupe_cars_counter
  #   coupe_cars = 0
  #   cars.each do |car|
  #     coupe_cars += 1 if car.car_type == "coupe"
  #   end
  #   coupe_cars
  # end
  #
  # def plaz_cars_counter
  #   plaz_cars = 0
  #   cars.each do |car|
  #     plaz_cars += 1 if car.car_type == "plaz"
  #   end
  #   plaz_cars
  # end
  #
  # def places_plaz_up_counter
  #   plaz_up = 0
  #   cars.each do |car|
  #     plaz_up += car.upper if car.car_type == "plaz"
  #   end
  #   plaz_up
  # end
  #
  # def places_plaz_low_counter
  #   plaz_low = 0
  #   cars.each do |car|
  #     plaz_low += car.lower if car.car_type == "plaz"
  #   end
  #   plaz_low
  # end
  #
  # def places_coupe_up_counter
  #   coupe_up = 0
  #   cars.each do |car|
  #     coupe_up += car.upper if car.car_type == "coupe"
  #   end
  #   coupe_up
  # end
  #
  # def places_coupe_low_counter
  #   coupe_low = 0
  #   cars.each do |car|
  #     coupe_low += car.lower if car.car_type == "coupe"
  #   end
  #   coupe_low
  # end
end
