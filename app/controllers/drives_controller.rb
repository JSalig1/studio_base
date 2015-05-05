class DrivesController < ApplicationController
  def index
    @drives = Drive.all
  end

  def new
    @drive = Drive.new
  end

  def create
    drive = Drive.new(drive_params)
    if drive.save
      redirect_to drives_path
    else
      @drive = drive
      render :new
    end
  end

  def show
    @drive = find_drive
    @projects = @drive.projects
  end

  def edit
    @drive = find_drive
  end

  def update
    drive = find_drive
    if drive.update_attributes(drive_params)
      redirect_to drive
    else
      @drive = drive
      render :edit
    end
  end

  def destroy
    drive = find_drive
    drive.destroy

    flash[:notice] = 'Drive deleted'
    redirect_to drives_path
  end

  private

  def find_drive
    Drive.find(params[:id])
  end

  def drive_params
    params.require(:drive).permit(:number, :category, :redundancy)
  end
end
