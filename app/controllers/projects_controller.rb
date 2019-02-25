class ProjectsController < ApplicationController
  def index
    @project = Project.joins(users_projects).where(projects.users.include?(current_user))
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to projects_path
    else
      render :new
    end
  end

  private

  def project_params
    params.require(:project).permit(:title, :start_date, :end_date, :participant_number)
  end
end
