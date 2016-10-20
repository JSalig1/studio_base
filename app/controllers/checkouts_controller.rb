class CheckoutsController < ApplicationController

  before_action :authorize, except: [:show]

  def new
    @drive = find_drive
    @checkout = @drive.checkouts.new
  end

  def create
    @drive = find_drive
    @checkout = @drive.checkouts.new(checkout_params)
    if @checkout.save
      flash[:notice] = 'Drive checked out successfully'
      redirect_to @drive
    else
      render :new
    end
  end

  def show
    @checkout = find_checkout
  end

  def edit
    @checkout = find_checkout
  end

  def update
    checkout = find_checkout
    if checkout.update_attributes(checkout_params)
      redirect_to checkout
    else
      @checkout = checkout
      render :edit
    end
  end

  def destroy
    checkout = find_checkout
    drive = checkout.drive
    checkout.destroy
    flash[:notice] = 'Checkout deleted'
    redirect_to drive
  end

  private

  def find_checkout
    Checkout.find(params[:id])
  end

  def find_drive
    Drive.find(params[:drive_id])
  end

  def checkout_params
    params.require(:checkout).permit(:borrower, :purpose, :borrow_date, :status, :returner, :return_date)
  end

end
