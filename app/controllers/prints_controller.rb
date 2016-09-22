class PrintsController < ApplicationController

  layout false

  def show
    @drive = Drive.find(params[:format])
  end

end
