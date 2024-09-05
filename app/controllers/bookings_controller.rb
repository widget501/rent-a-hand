class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy, :accept, :decline]
  before_action :authenticate_user!
  before_action :authorize_user!, only: [:accept, :decline]

  def index
    @bookings = current_user.bookings
  end

  def show
    @booking = Booking.find(params[:id])
    # authorize @booking
  end

  def new
    @booking = Booking.new
    @service = Service.find(params[:service_id])
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def create
    @service = Service.find(params[:service_id])
    @booking = Booking.new(booking_params)
    @booking.service = @service
    @booking.user = current_user
    if @booking.save
      redirect_to @booking, notice: 'Booking created successfully.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      redirect_to @booking, notice: 'Booking updated successfully.', status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy!
    redirect to bookings_path, notice: 'Booking deleted successfully.', status: :see_other
  end

  def accept
    if @booking.update(status: 'accepted')
      redirect_to @booking, notice: 'Booking was successfully accepted.'
    else
      redirect_to @booking, alert: 'Failed to accept the booking.'
    end
  end

  def decline
    if @booking.update(status: 'declined')
      redirect_to @booking, notice: 'Booking was successfully declined.'
    else
      redirect_to @booking, alert: 'Failed to decline the booking.'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def authorize_user!
    unless @booking.service.user == current_user
      redirect_to root_path, alert: 'You are not authorized to perform this action.'
    end
  end
end
