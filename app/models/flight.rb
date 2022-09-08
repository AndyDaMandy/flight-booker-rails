class Flight < ApplicationRecord
    belongs_to :departing_airport, class_name: "Airport"
    belongs_to :arrival_airport, class_name: "Airport"

    scope :by_departure_date, -> (start_date, end_date) { where(departure_date: start_date..end_date) }
    scope :by_arrival_date, -> (start_date, end_date) { where(arrival_date: start_date..end_date) }
    scope :by_departure_airport, ->  (departure_airport) { where(departing_airport_id: departure_airport) }
    scope :by_arrival_airport, -> (arrival_airport) { where(arrival_airport_id: arrival_airport)}

=begin
    def self.search(search)
        if search
            flight = Flight.find_by(name: search)
            if flight
                self.where(flight_id: flight)
            else
                Flight.all
            end
        else
            Flight.all
        end
    end
=end
end
