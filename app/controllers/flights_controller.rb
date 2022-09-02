class FlightsController < ApplicationController
    def index
        @flights = Flight.all
        @arrival_options = Flight.all.map{ |f| [ f.arrival_airport.airport_name ]}
        @departure_options = Flight.all.map{ |f| [ f.departing_airport.airport_name ]}
        @departure_date = Flight.all.map{ |f| [ f.departure_date ] }
        @arrival_date = Flight.all.map{ |f| [ f.arrival_date ] }
        if request.get?
        @parameter = params[:search]
        @results = Flight.all.where("lower(name) LIKE :search", search: "%#{@parameter}%")
        end
    end

    def search
        if params[:search].blank?
            redirect_to flights_path and return
        else
            redirect_to flights_search_path
            @parameter = params[:search].downcase
            @results = Flight.all.where("lower(name) LIKE :search", search: "%#{parameter}%")
        end
    end
    def show
        @flight = Flight.find(params[:id])
    end
end
