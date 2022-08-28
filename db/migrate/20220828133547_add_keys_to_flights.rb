class AddKeysToFlights < ActiveRecord::Migration[7.0]
  def change
    add_column :flights, :departing_flight_id, :integer, index: true
    add_foreign_key :flights, :airports, column: :departing_flight_id
    add_column :flights, :arriving_flight_id, :intger, index: true
    add_foreign_key :flights, :airports, column: :arriving_flight_id
  end
end
