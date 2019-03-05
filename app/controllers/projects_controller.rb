class ProjectsController < ApplicationController
  def index
    @projects = policy_scope(Project).order(created_at: :desc)
    if current_user.access_level == ('admin' || 'project_manager')
      @projects = Project.all
    else
      @projects = current_user.projects
    end
  end

  def show
    @project = Project.find(params[:id])
    authorize @project
    @users = User.all
    @userproject = UserProject.new
  end

  def new
    @project = Project.new
    @clients = Client.all
    authorize @project
  end

  def create
    @project = Project.new(project_params)
    authorize @project
    @project.user = current_user
    @userproject = UserProject.new(user: current_user, project: @project)
    if @project.save && @userproject.save
      redirect_to projects_path
    else
      @clients = Client.all
      render :new
    end
  end

  def edit
    @project = Project.find(params[:id])
    authorize @project
  end

  def update
    @project = Project.find(params[:id])
    authorize @project
    @project.update(project_params)
    if @project.save
      redirect_to project_path(@project)
    else
      render :edit
    end
  end

  def destroy
    @project = Project.find(params[:id])
    authorize @project
    @userproject = UserProject.where(project: @project)
    @userproject.destroy(params[:id])
    @project.destroy
    redirect_to projects_path
  end

  private

  def project_params
    params.require(:project).permit(:title, :start_date, :end_date, :participant_number, :user, :client_id)
  end
end
