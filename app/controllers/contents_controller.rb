class ContentsController < ApplicationController
  def index
    @contents = Content.all
  end

  def show
    @content = Content.find(params[:id])
  end

  def new
    @content = Content.new
  end

  def create
    @content = Content.new(content_params)
    if @content.save
      redirect_to content_path(@content)
    else
      render :new
    end
  end

  def edit
    @content = Content.find(params[:id])
  end

  def update
    @content = Content.find(params[:id])
    if @content.update(content_params)
      redirect_to content_path(@content)
    else
      render :edit
    end
  end

  def destroy
    @content = Content.find(params[:id])
    @content.destroy
    redirect_to contents_path
  end

  private

  def content_params
    params.require(:content).permit(:title, :format, :duration, :description)
  end
end
