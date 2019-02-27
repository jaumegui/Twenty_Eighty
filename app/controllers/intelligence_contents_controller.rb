class IntelligenceContentsController < ApplicationController
  def new
    @content = Content.find(params[:content_id])
    @intelcontent = IntelligenceContent.new
    @intelligences = Intelligence.all
  end

  def create
    @content = Content.find(params[:content_id])
    @intelcontent = IntelligenceContent.new
    @intelcontent.content = @content
    @intelcontent.intelligence = Intelligence.find(params[:intelligence_content][:intelligence].to_i)
    if @intelcontent.save
      redirect_to content_path(@content)
    else
      render :new
    end
  end
end
