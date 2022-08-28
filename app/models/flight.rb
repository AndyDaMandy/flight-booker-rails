class Flight < ApplicationRecord
    belongs_to :departure_airport, foreign_key: :departing_flight_id, class_name: "User"
    belongs_to :arrival_airport, foreign_key: :arriving_flight_id, class_name: "User"
end
