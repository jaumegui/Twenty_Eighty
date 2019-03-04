class UserProjectsController < ApplicationController
  def create
    @user = User.find(params[:user_project][:user].to_s)
    @project = Project.find(params[:project_id])
    @userproject = UserProject.new(user: @user, project: @project)
    authorize @userproject
    if @userproject.save
      redirect_to project_path(@project)
    else
      raise
    end
  end
end
