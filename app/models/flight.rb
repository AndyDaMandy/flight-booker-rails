class Flight < ApplicationRecord
    belongs_to :departing_airport, class_name: "Airport"
    belongs_to :arrival_airport, class_name: "Airport"

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
end
