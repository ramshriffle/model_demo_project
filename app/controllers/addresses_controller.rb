class AddressesController < ApplicationController
  def index
    @address=Address.all
    render json: @address
  end

  def show
    @address=Address.find(params[:id])
    # puts @address
    if @address
      render json: @address
    else
      render json: {error: "ID not found"}
    end
  end

  def create
    @address=Address.create(param_address)
    if @address.save
      render json: @address
    else
      render json: {error:"failed"}
    end
  end

  def param_address
    params.permit(:city)
  end
end
