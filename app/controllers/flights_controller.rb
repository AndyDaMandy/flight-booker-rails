class FlightsController < ApplicationController
    def index
        @flights = Flight.all
        @arrival_options = Flight.all.map{ |f| [ f.arrival_airport.airport_name ]}
        @departure_options = Flight.all.map{ |f| [ f.departing_airport.airport_name ]}
        @departure_date = Flight.all.map{ |f| [ f.departure_date ] }
        @arrival_date = Flight.all.map{ |f| [ f.arrival_date ] }
    end

    def search
        if params[:search].blank?
            redirect_to flights_path and return
        else
            @parameter = params[:search].downcase
            @results = Flight.all.where("lower(name) LIKE :search", search: "%#{parameter}%")

        end
    end
    def show
        @flight = flight.find(params[:id])
    end
end
