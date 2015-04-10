class ArchivesController < ApplicationController
  def new
    @project = Project.find(params[:project_id])
    @archive = Archive.new
  end

  def create
    archive = Archive.new(archive_params)
    if archive.save
      redirect_to archive.project
    else
      @archive = archive
      @project = Project.find(params[:project_id])
      render :new
    end
  end

private

  def archive_params
    params.require(:archive).permit(:project_id, :drive_id)
  end
end
