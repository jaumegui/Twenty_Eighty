class IntelligenceContentsController < ApplicationController
  def new
    @content = Content.find(params[:content_id])
    @intelcontent = IntelligenceContent.new
  end

  def create
    @content = Content.find(params[:content_id])
    @intelcontent = IntelligenceContent.new
    @intelcontent.content = @session
    @intelcontent.intelligence = Intelligence.find(params[:intelligence_content][:content].to_i)
    if @intelcontent.save
      redirect_to content_path(@content)
    else
      render :new
    end
  end
end
