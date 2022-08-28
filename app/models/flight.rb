class Flight < ApplicationRecord
    belongs_to :departing_flight, class_name: "Airport"
    belongs_to :arriving_flight, class_name: "Airport"
end
