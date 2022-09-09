class Flight < ApplicationRecord
    belongs_to :departing_airport, class_name: "Airport"
    belongs_to :arrival_airport, class_name: "Airport"

    scope :by_departure_date, -> (departure_date) { where(departure_date: departure_date) }
    scope :by_arrival_date, -> (arrival_date) { where(arrival_date: arrival_date) }
    scope :by_departing_airport, ->  (departing_airport) { where(departing_airport_id: departing_airport) }
    scope :by_arrival_airport, -> (arrival_airport) { where(arrival_airport_id: arrival_airport)}
=begin
    def self.search(search)
        if search
            flight = Flight.find_by(departing_airport_id: search)
        else
            Flight.all
        end
    end
=end
end
