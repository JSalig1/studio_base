class CheckoutsController < ApplicationController

  def new
    @drive = Drive.find(params[:drive_id])
    @checkout = @drive.checkouts.new
  end

  def create
    @drive = Drive.find(params[:drive_id])
    @checkout = @drive.checkouts.new(checkout_params)
    @checkout.status = 'Out'
    if @checkout.save
      flash[:notice] = 'Drive checked out successfully'
      redirect_to @drive
    else
      render :new
    end
  end

  private

  def checkout_params
    params.require(:checkout).permit(:borrower, :purpose, :date, :status)
  end

end
