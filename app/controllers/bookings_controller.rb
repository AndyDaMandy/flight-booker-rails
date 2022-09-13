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
        bp = booking_params
        @flight = Flight.find(booking_params[:flight].to_i)
        booking_params[:flight] = @flight.id.to_i
        booking_params[:passengers][:user_id] = current_user.id.to_id
        @booking = Booking.new(booking_params)

        if @booking.save
            redirect_to booking_path
        else
            render :new, status: :unprocessable_entity
        end
    end

    private
    def booking_params
        params.require(:booking).permit(:flight_id, passengers: [:id, :name, :user_id])
    end

end
