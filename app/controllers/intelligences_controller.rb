class IntelligencesController < ApplicationController
  def index
    @intelligences = Intelligence.all
  end

  def show
    @intelligence = Intelligence.find(params[:id])
  end

  def new
    @intelligence = Intelligence.new
  end

  def create
    @intelligence = Intelligence.new(intel_params)
    if @intelligence.save
      redirect_to intelligence_path(@intelligence)
    else
      render :new
    end
  end

  def edit
    @intelligence = Intelligence.find(params[:id])
  end

  def update
    @intelligence = Intelligence.find(params[:id])
    @intelligence.update(intel_params)
    if @intelligence.save
      redirect_to intelligence_path(@intelligence)
    else
      render :edit
    end
  end

  def destroy
    @intelligence = Intelligence.find(params[:id])
    @intelligence.destroy
    redirect_to intelligences_path
  end

  private

  def intel_params
    params.require(:intelligence).permit(:name, :description)
  end
end
