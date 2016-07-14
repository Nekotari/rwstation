class AddPlacesToCars < ActiveRecord::Migration
  def change
    add_column :cars, :side_upper, :integer
    add_column :cars, :side_lower, :integer
    add_column :cars, :sit, :integer
    add_column :cars, :type, :string
    remove_column :cars, :car_type
  end
end
