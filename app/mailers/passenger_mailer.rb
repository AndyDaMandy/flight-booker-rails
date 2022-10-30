class PassengerMailer < ApplicationMailer

    default from: 'notifications@example.com'

    def ticket_confirmation_email
        @user = params[:user]
        @flight = params[:flight]
        @booking = params[:booking]
        @passenger = params[:passenger]
        @url  = 'http://example.com/login'
        mail(to: @user.email, subject: 'Thank you for booking with us!')
      end
end
