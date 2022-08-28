class AddKeysToFlights < ActiveRecord::Migration[7.0]
  def change
    add_column :flights, :departing_airport_id, :integer, index: true
    add_foreign_key :flights, :airports, column: :departing_airport_id
    add_column :flights, :arrival_airport_id, :intger, index: true
    add_foreign_key :flights, :airports, column: :arrival_airport_id
  end
end
