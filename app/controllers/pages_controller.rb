class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def dashboard
    @booking = current_user.bookings
  end
end
