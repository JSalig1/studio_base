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
      redirect_to drive
    else
      @drive = drive
      render :new
    end
  end

  def show
    @drive = Drive.find(params[:id])
    @projects = @drive.projects
  end

  def edit
    @drive = Drive.find(params[:id])
    @project_archive = @archive.make_project_entry
  end

  private

  def drive_params
    params.require(:drive).permit(:number)
  end
end
