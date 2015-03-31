class ArchivesController < ApplicationController
  def new
    @archive = Archive.new
  end
  
  def create
    archive = Archive.new(archive_params)
    if archive.save
      redirect_to projects_path
    else
      @archive = archive
      render :new
    end
  end
  
  private
  
  def archive_params
    params.require(:archive).permit(:archive_number)
  end
end