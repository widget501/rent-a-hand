class ServicesController < ApplicationController
  def index
    @services = Service.all
  end

  def show

  end

  def create
    @service = Service.new(service_params)
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
end
