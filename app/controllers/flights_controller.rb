class FlightsController < ApplicationController
    def index
        @flights = Flight.search(params[:search])
        @arrival_options = Flight.all.map{ |f| [ f.arrival_airport.airport_name ]}
        @departure_options = Flight.all.map{ |f| [ f.departing_airport.airport_name ]}
        @departure_date = Flight.all.map{ |f| [ f.departure_date ] }
        @arrival_date = Flight.all.map{ |f| [ f.arrival_date ] }
        if params[:flight]
            @searched_fights = Flight.where(flight)params
        end
        @flights = @flights.by_arrival_airport(params[:arrival_airport]) if params[:arrival_airport].present?
    end

    def search
        if params[:search].blank?
            redirect_to flights_path and return
        else
            @parameter = params[:search]
            @results = Flight.all.where(" LIKE :search", search: "%#{parameter}%")
        end
    end
    def show
        @flight = Flight.find(params[:id])
    end

    private

    def flight_params
        params.require(:flight).permit(:arrival_airport_id, :departing_airport_id, :departure_date, :arrival_date)
    end
    def search_params
        params.permit(:arrival_airport_id, :departing_airport_id, :departure_date, :arrival_date)
    end
end
