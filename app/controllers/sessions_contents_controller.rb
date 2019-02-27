class SessionsContentsController < ApplicationController
  def show
    @sessionscontent = SessionsContent.find(params[:id])
  end

  def create
    @sessionscontent = SessionsContent.create
    @session = Session.find(params[:session_id])
    @sessionscontent.session = @session
    @sessionscontent.content = Content.find(params[:content_id])
    @sessionscontent.title = @sessionscontent.content.title
    @sessionscontent.description = @sessionscontent.content.description
    @sessionscontent.chapter = @sessionscontent.content.chapter
    @sessionscontent.duration = @sessionscontent.content.duration
    @sessionscontent.format = @sessionscontent.content.format
    @sessionscontent.order = @sessionscontent.id
    @sessionscontent.save
    redirect_to project_session_path(@session.project, @session)
  end

  def edit
    @sessionscontent = SessionsContent.find(params[:id])
  end

  def update
    @sessionscontent = SessionsContent.find(params[:id])
    @sessionscontent.update(sessionscontent_params)
    if @sessionscontent.save
      redirect_to project_session_path(@sessionscontent.session.project, @sessionscontent.session)
    else
      render :edit
    end
  end

  def destroy
    @sessionscontent = SessionsContent.find(params[:id])
    @SessionsContent.destroy
  end

  private

  def sessionscontent_params
    params.require(:sessions_content).permit(:session_id, :content_id)
  end
end
