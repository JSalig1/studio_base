class ArchivesController < ApplicationController
  def new
    @archive = Archive.new
    @project = Project.find(params[:project_id])
  end

  def create
    archive = Archive.new(archive_params)
    if archive.save
      redirect_to archive.project
    else
      @archive = archive
      render :new
    end
  end

private

  def archive_params
    params.require(:archive).permit(:project_id, :drive_id)
  end
end
