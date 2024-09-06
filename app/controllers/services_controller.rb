class ServicesController < ApplicationController
  def index
    @services = Service.all

    # The `geocoded` scope filters only services with coordinates
    @services2 = Service.geocoded
    @markers = @services2.geocoded.map do |service|
      {
        lat: service.latitude,
        lng: service.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {service: service}),
        marker_html: render_to_string(partial: "marker")
      }
    end
  end

  def show
    @service = Service.find(params[:id])
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)
    @service.user = current_user

    if @service.save
      redirect_to @service, notice: 'Service was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @service = Service.find(params[:id])
    @service.destroy
    redirect_to services_url, notice: 'Service was successfully destroyed.'
  end

  private

  def service_params
    params.require(:service).permit(:title, :description, photos: [])
  end
end
