class CreateCar < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.integer :number
      t.string :car_type
      t.integer :upper
      t.integer :lower
      t.integer :train_id
      t.timestamps null: false
    end
  end
end
