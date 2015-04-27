class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    project = Project.new(project_params)
    if project.save
      redirect_to project
    else
      @project = project
      render :new
    end
  end

  def show
    @project = find_project
    @drives = @project.drives
  end

  def edit
    @project = find_project
  end

  def update
    project = find_project
    if project.update_attributes(project_params)
      redirect_to project
    else
      @project = project
      render :edit
    end
  end

  private

  def find_project
    Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:name, :job_number, :status)
  end
end
