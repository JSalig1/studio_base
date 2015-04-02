class ArchivesController < ApplicationController
  def index
    @archives = Archive.all
  end

  def new
    @archive = Archive.new
  end

  def create
    archive = Archive.new(archive_params)
    if archive.save
      redirect_to archive
    else
      @archive = archive
      render :new
    end
  end

  def show
    @archive = Archive.find(params[:id])
    @projects = @archive.projects
  end

  def edit
    @archive = Archive.find(params[:id])
    @project_archive = @archive.make_project_entry
  end

  private

  def archive_params
    params.require(:archive).permit(:archive_number)
  end
end
