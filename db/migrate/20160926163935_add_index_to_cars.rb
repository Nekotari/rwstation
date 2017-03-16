class AddIndexToCars < ActiveRecord::Migration
  def change
    add_index :cars, [:train_id, :type]
  end
end
