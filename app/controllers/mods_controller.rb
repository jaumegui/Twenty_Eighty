class ModsController < ApplicationController
  def show
    @mod = Mod.find(params[:id])
  end

  def create
    @content = Content.find(params[:content_id])
    @session = Session.find(params[:session_id])
    @mod = Mod.new(@content.attributes.except("id", "created_at", "updated_at"))
    @mod.session = @session
    if @mod.save
      redirect_to project_session_path(@session.project, @session)
    else
      raise
    end
  end

  def edit
    @mod = Mod.find(params[:id])
  end

  def update
    @mod = Mod.find(params[:id])
    @mod.update(mod_params)
    if @mod.save
      redirect_to project_session_path(@mod.session.project, @mod.session)
    else
      render :edit
    end
  end

  def destroy
    @mod = Mod.find(params[:id])
    @mod.destroy
    redirect_to project_session_path(@mod.session.project, @mod.session)
  end

  def move
    @mod = Mod.find(params[:id])
    @session = @mod.session
    @mod.insert_at(params[:position].to_i)
  end

  private

  def mod_params
    params.require(:mod).permit(:session_id, :title, :duration, :format, :description, :intel1, :intel2, :chapter)
  end
end