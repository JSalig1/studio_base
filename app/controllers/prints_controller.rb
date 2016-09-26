class PrintsController < ApplicationController

  layout false

  def show
    @drive = Drive.find(params[:format])
    @address = ENV['COMPANY_ADDRESS']
  end

end
