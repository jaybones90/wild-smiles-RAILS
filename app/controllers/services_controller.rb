class ServicesController < ApplicationController

  def index
    @services = Service.all
  end

  def show
    @service = Service.find(params[:id])
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)
    if @service.save
      flash[:notice] = "Service Sucessfully Added"
      redirect_to service_path(@service)
    else
      flash[:alert] = "Something Went Wrong, Please Try Again"
      render :new
    end
  end

  def destroy
    @service = Service.find(params[:id])
    @service.destroy
    redirect_to services_path
  end

private
  def service_params
    params.require(:service).permit(:name, :description, :cost)
  end

end
