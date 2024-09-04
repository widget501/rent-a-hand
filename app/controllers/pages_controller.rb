class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def dashboard
    @bookings = Booking.all
  end
end
