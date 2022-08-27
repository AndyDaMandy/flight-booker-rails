class CreateAirports < ActiveRecord::Migration[7.0]
  def change
    create_table :airports do |t|
      t.string :airport_code
      t.string :airport_name
      t.string :city
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
