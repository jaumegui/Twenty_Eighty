class ModsController < ApplicationController
  def show
    @mod = Mod.find(params[:id])
    authorize @mod
  end

  def create
    @content = Content.find(params[:content_id])
    @session = Session.find(params[:session_id])
    @mod = Mod.new(@content.attributes.except("id", "created_at", "updated_at"))
    authorize @mod
    @mod.session = @session
    @mod.save
    respond_to do |format|
      format.html {redirect_to project_session_path(@session.project, @session)}
      format.js
    end
    Comment.create(message: "Log | Module #{@mod.title} added |", user_id: current_user.id, session_id: @mod.session.id)

  end

  def edit
    @mod = Mod.find(params[:id])
    # raise
    authorize @mod
  end

  def update
    @mod = Mod.find(params[:id])
    params = @mod.attributes
    authorize @mod
    @mod.update(mod_params)
    if @mod.save
      comment = Comment.create(message: "Log | Module #{@mod.title} updated | from #{params.except('id', 'created_at', 'updated_at', 'session_id')} to #{@mod.attributes.except('id', 'created_at', 'updated_at', 'session_id')}",
                     user_id: current_user.id, session_id: @mod.session.id)
      redirect_to project_session_path(@mod.session.project, @mod.session)
    else
      render :edit
    end
  end

  def destroy
    @mod = Mod.find(params[:id])
    Comment.create(message: "Log | Module #{@mod.title} removed |", user_id: current_user.id, session_id: @mod.session.id)
    authorize @mod
    @mod.destroy
    redirect_to project_session_path(@mod.session.project, @mod.session)
  end

  def move
    @mod = Mod.find(params[:id])
    authorize @mod
    @session = @mod.session
    @mod.insert_at(params[:position].to_i)
  end

  private

  def mod_params
    params.require(:mod).permit(:session_id, :title, :duration, :format, :description, :intel1, :intel2, :chapter)
  end
end