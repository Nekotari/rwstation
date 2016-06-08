class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.integer :number
      t.integer :train_id
      t.integer :user_id
      t.integer :from_id
      t.integer :to_id
      
      t.timestamps null: false
    end
  end
end
