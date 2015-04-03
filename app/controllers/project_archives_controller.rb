class ProjectArchivesController < ApplicationController
  def new
    @project_archive = ProjectArchive.new
  end

  def create
    project_archive = ProjectArchive.new(project_archive_params)
    if project_archive.save
      redirect_to project_archive.project
    else
      @project_archive = project_archive
      render :new
    end
  end
  
private

  def project_archive_params
    params.require(:project_archive).permit(:archive_id, :project_id, :drive_id)
  end
end