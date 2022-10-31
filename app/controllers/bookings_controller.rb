class BookingsController < ApplicationController
    def index
        @bookings = Booking.all
    end
    def show
        @booking = Booking.find(params[:id])
    end
    def new
        @flight = Flight.find(params[:flight])
        @booking = Booking.new
        @booking.passengers.build
    end
    def create
        @flight = Flight.find(booking_params[:flight_id])
        @booking = @flight.bookings.build(booking_params)

        if @booking.save
            @passenger = Passenger.find(@booking.id)
            PassengerMailer.with(user: current_user, flight: @flight, booking: @booking, passenger: @passenger).ticket_confirmation_email.deliver_now
            redirect_to booking_path(@booking)
        else
            render :new, status: :unprocessable_entity
        end
    end

    private
    def booking_params
        params.require(:booking).permit(:flight_id, passengers_attributes: [:id, :name, :user_id])
    end

end
