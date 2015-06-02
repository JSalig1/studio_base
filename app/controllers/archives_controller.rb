class ArchivesController < ApplicationController
  def new
    @archive = find_project.archives.new
  end

  def create
    project = find_project
    archive = project.archives.new(archive_params)
    if archive.save
      project.archived!
      redirect_to project
    else
      @archive = archive
      render :new
    end
  end

  def show
    @archive = find_archive
  end

  def edit
    @archive = find_archive
  end

  def update
    archive = find_archive
    if archive.update_attributes(archive_params)
      redirect_to archive
    else
      @archive = archive
      render :edit
    end
  end

  def destroy
    archive = find_archive
    archive.destroy

    flash[:notice] = 'Archive deleted'
    redirect_to archive.project
  end

  private

  def archive_params
    params.require(:archive).permit(:project_id, :drive_id, :size, :notes)
  end

  def find_archive
    Archive.find(params[:id])
  end

  def find_project
    Project.find(params[:project_id])
  end
end
