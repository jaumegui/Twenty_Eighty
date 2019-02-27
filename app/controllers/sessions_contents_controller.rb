class SessionsContentsController < ApplicationController
  def new
    @session = Session.find(params[:session_id])
    @contents = Content.all
    @sessionscontent = SessionsContent.new
  end

  def create
    @sessionscontent = SessionsContent.new
    @session = Session.find(params[:session_id])
    @sessionscontent.session = @session
    @sessionscontent.content = Content.find(params[:content_id])
    if @sessionscontent.save
      redirect_to project_session_path(@session.project, @session)
    else
      render :new
    end
  end

  private

  def sessionscontent_params
    params.require(:sessions_content).permit(:session_id, :content_id)
  end
end
