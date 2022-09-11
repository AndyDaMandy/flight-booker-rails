class BookingsController < ApplicationController
    def show

    end
    def new
        @booking = Booking.new
        @flight = Flight.find(params[:flight])
        @passenger = params[:passenger]
    end
end
