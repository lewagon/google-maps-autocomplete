class FlatsController < ApplicationController
  def index
    @flats = Flat.all.order(created_at: :desc)
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to root_path, notice: 'Your flat has been created'
    else
      render :new
    end
  end

  def destroy
    @flat = Flat.find(params[:id])
    @flat.destroy
  end

  private

  def flat_params
    params.require(:flat).permit(:address, :zip_code, :city, :country)
  end
end
