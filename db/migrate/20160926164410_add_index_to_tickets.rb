class AddIndexToTickets < ActiveRecord::Migration
  def change
    add_index :tickets, :train_id
    add_index :tickets, :user_id
    add_index :tickets, :from_id
    add_index :tickets, :to_id
  end
end
