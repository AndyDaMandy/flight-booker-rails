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
        @passenger = params[:passenger]
    end
    def create
        @booking = Booking.new(booking_params)

        if @booking.save
            redirect_to @booking
        else
            render :new, status: :unprocessable_entity
        end
    end

    private
    def booking_params
        params.require(:booking).permit(:flight, :passengers)
    end

end
