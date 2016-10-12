class CheckinsController < ApplicationController
  def edit
    @checkout = Checkout.find(params[:id])
  end

  def update
    checkout = Checkout.find(params[:id])
    checkout.update_attributes(checkout_params)
    flash[:notice] = "Drive checked in successfully"
    redirect_to checkout.drive
  end

  private

  def checkout_params
    params.require(:checkout).permit(:borrower, :purpose, :date, :status, :returner, :return_date)
  end
end
