class SessionsController < ApplicationController
  def index
    @project = Project.find(params[:project_id])
    @sessions = Session.where(project: @project)
  end

  def show
    @session = Session.find(params[:id])
  end

  def new
    @session = Session.new
    @project = Project.find(params[:project_id])
  end

  def create
    @project = Project.find(params[:project_id])
    @session = Session.new(session_params)
    @session.project = @project
    if @session.save
      redirect_to project_session_path(@project, @session)
    else
      render :new
    end
  end

  def edit
    @session = Session.find(params[:id])
    @project = Project.find(@session.project_id)
  end

  def update
    @session = Session.find(params[:id])
    @project = Project.find(@session.project.id)
    @session.update(session_params)
    if @session.save
      redirect_to project_session_path(@project, @session)
    else
      render :edit
    end
  end

  def destroy
    @project = Project.find(params[:project_id])
    @session = Session.find(params[:id])
    @session.destroy
    redirect_to project_sessions_path(@project)
  end

  private

  def session_params
    params.require(:session).permit(:title, :date, :start_time, :end_time, :project_id)
  end
end
