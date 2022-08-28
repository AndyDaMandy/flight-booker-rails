class AddDatesToFlights < ActiveRecord::Migration[7.0]
  def change
    add_column :flights, :datetime, :time
  end
end
