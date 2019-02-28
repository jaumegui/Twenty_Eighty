class SessionsController < ApplicationController
  def index
    @project = Project.find(params[:project_id])
    @sessions = Session.where(project: @project)
    @sessions = policy_scope(Session).order(created_at: :desc)
  end

  def show
    @session = Session.find(params[:id])
    authorize @session
    @contents = Content.all
    @comment = Comment.new
    @chapter = []
    @contents.each do |content|
      @chapter << content.chapter
    end
    @chapter = @chapter.uniq
  end

  def new
    @session = Session.new
    authorize @session
    @project = Project.find(params[:project_id])
  end

  def create
    @project = Project.find(params[:project_id])
    @session = Session.new(session_params)
    authorize @session
    @session.project = @project
    if @session.save
      redirect_to project_session_path(@project, @session)
      Comment.create(message: "Log | Session #{@session.title} created |", user_id: current_user.id, session_id: @session.id)
    else
      render :new
    end
  end

  def edit
    @session = Session.find(params[:id])
    authorize @session
    @project = Project.find(@session.project_id)
  end

  def update
    @session = Session.find(params[:id])
    authorize @session
    @project = Project.find(@session.project.id)
    params = @session.attributes
    @session.update(session_params)
    if @session.save
      redirect_to project_session_path(@project, @session)
      Comment.create(message: "Log | Session #{@session.title} parameters updated | from #{params.except('id', 'created_at', 'updated_at', 'project_id')},\n
        to #{@session.attributes.except('id', 'created_at', 'updated_at', 'project_id')}", user_id: current_user.id, session_id: @session.id)
    else
      render :edit
    end
  end

  def destroy
    @project = Project.find(params[:project_id])
    @session = Session.find(params[:id])
    authorize @session
    @session.destroy
    redirect_to project_path(@project)
  end

  private

  def session_params
    params.require(:session).permit(:title, :date, :start_time, :end_time, :project_id)
  end
end
