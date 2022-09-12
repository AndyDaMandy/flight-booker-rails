class PassengersController < ApplicationController
    def index
    end
    def show
    end
    def new
        @passengers = Passenger.new
    end
    def create
        @passenger = Passenger.new(passenger_params)

        if @passenger.save
            redirect_to @passenger
        else
            render :new, status: :unprocessable_entity
        end
    end

    private

    def passenger_params
        params.require(:passenger).permit(:user_id, :name)
    end
end
