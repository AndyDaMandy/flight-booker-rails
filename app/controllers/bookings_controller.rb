class BookingsController < ApplicationController
    def index
        @bookings = Booking.all
    end
    def show
        @booking = Booking.find(params[:id])
    end
    def new
        @booking = Booking.new
        @flight = Flight.find(params[:flight])
        @booking.passengers.build
    end
    def create
        @booking = Booking.new(booking_params)
        @flight = Flight.find(params[:flight])

        if @booking.save
            redirect_to booking_path
        else
            render :new, status: :unprocessable_entity
        end
    end

    private
    def booking_params
        params
        .require(:booking).permit(:flight_id)
        .permit(:passengers,
            passengers: [:user, :name]
        )
    end

end
