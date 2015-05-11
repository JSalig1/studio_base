class ArchivesController < ApplicationController
  def new
    @archive = find_project.archives.new
  end

  def create
    archive = find_project.archives.new(archive_params)
    if archive.save
      redirect_to archive.project
    else
      @archive = archive
      render :new
    end
  end

  def show
    @archive = Archive.find(params[:id])
  end

  private

  def archive_params
    params.require(:archive).permit(:project_id, :drive_id, :size, :notes)
  end

  def find_project
    Project.find(params[:project_id])
  end
end
