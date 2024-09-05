class PagesController < ApplicationController
  before_action :authenticate_user!

  def dashboard
    # @bookings = Booking.all
    @services = current_user.services
    @bookings = Booking.join(:service).where(services: { user_id: current_user.id })
  end
end
