class DrivesController < ApplicationController

  before_action :authorize, only: [:new, :create, :edit, :update, :destroy]

  def index
    @drives = Drive.paginate(page: params[:page], per_page: 12).order("created_at DESC")
  end

  def new
    @drive = Drive.new
  end

  def create
    drive = Drive.new(drive_params)
    if drive.save
      current_user.notify_created(drive)
      redirect_to drive
    else
      @drive = drive
      render :new
    end
  end

  def show
    @drive = find_drive
    @checkouts = @drive.checkouts.paginate(page: params[:page], per_page: 6).order('updated_at DESC')
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
    params.require(:drive).permit(
      :name,
      :project,
      :brand,
      :capacity,
      :location,
      :notes
    )
  end
end
