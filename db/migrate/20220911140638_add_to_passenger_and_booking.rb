class AddToPassengerAndBooking < ActiveRecord::Migration[7.0]
  def change
    add_reference :passengers, :user, foreign_key: true
    add_column :passengers, :name, :string
    add_reference :bookings, :flights, foreign_key: true
  end
end
