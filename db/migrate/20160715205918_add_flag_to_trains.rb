class AddFlagToTrains < ActiveRecord::Migration
  def change
    add_column :trains, :flag, :boolean
  end
end
