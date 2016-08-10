class AddDataToTickets < ActiveRecord::Migration
  def change
    add_column :tickets, :passenger, :string
    add_column :tickets, :passport, :string
  end
end
