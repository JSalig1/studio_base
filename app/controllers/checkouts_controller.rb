class CheckoutsController < ApplicationController

  before_action :authorize

  def new
    @drive = Drive.find(params[:drive_id])
    @checkout = @drive.checkouts.new
  end

  def create
    @drive = Drive.find(params[:drive_id])
    @checkout = @drive.checkouts.new(checkout_params)
    if @checkout.save
      flash[:notice] = 'Drive checked out successfully'
      redirect_to @drive
    else
      render :new
    end
  end

  def show
    @checkout = Checkout.find(params[:id])
  end

  def edit
    @checkout = Checkout.find(params[:id])
  end

  def update
    checkout = Checkout.find(params[:id])
    checkout.update_attributes(checkout_params)
    redirect_to checkout
  end

  private

  def checkout_params
    params.require(:checkout).permit(:borrower, :purpose, :date, :status, :returner, :return_date)
  end

end
