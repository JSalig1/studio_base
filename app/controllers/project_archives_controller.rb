class ProjectArchivesController < ApplicationController
  def new
    @project_archive = ProjectArchive.new
  end

  def create
    project_archive = ProjectArchive.new(project_archive_params)
    project_archive.save
    redirect_to root_path
  end
  
private

  def project_archive_params
    params.require(:project_archive).permit(:archive_id, :project_id)
  end
end