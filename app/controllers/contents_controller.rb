class ContentsController < ApplicationController
  def index
    @contents = Content.all
    @contents = policy_scope(Content).order(created_at: :desc)
  end

  def show
    @content = Content.find(params[:id])
    authorize @content
  end

  def new
    @content = Content.new
    authorize @content
  end

  def create
    @content = Content.new(content_params)
    authorize @content
    if @content.save
      redirect_to content_path(@content)
    else
      render :new
    end
  end

  def edit
    @content = Content.find(params[:id])
    authorize @content
  end

  def update
    @content = Content.find(params[:id])
    authorize @content
    @content.update(content_params)
    if @content.save
      redirect_to content_path(@content)
    else
      render :edit
    end
  end

  def destroy
    @content = Content.find(params[:id])
    authorize @content
    @content.destroy
    redirect_to contents_path
  end

  private

  def content_params
    params.require(:content).permit(:title, :format, :duration, :description, :chapter)
  end
end
