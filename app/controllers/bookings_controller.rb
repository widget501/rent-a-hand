class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @service = Service.find(params[:service_id])
    @booking = Booking.new(service: @service)
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def create
    @service = Service.find(params[:service_id])
    @booking = @service.bookings.new(booking_params)
    @booking.service = @service
    @booking.user = current_user
    if @booking.save
      redirect_to root_path, notice: 'Booking created successfully.'
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

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status, :user_id, :service_id)
  end
end
