class ClientsController < ApplicationController
  def index
    @clients = Client.all
    @clients = policy_scope(Client).order(created_at: :desc)
  end

  def show
    @client = Client.find(params[:id])
    authorize @client
  end

  def new
    @client = Client.new
    authorize @client
  end

  def create
    @client = Client.new(client_params)
    authorize @client
    if @client.save
      redirect_to client_path(@client)
    else
      render :new
    end
  end

  def edit
    @client = Client.find(params[:id])
    authorize @client
  end

  def update
    @client = Client.find(params[:id])
    authorize @client
    @client.update(client_params)
    if @client.save
      redirect_to client_path(@client)
    else
      render :edit
    end
  end

  def destroy
    @client = Client.find(params[:id])
    authorize @client
    @client.destroy
    redirect_to clients_path
  end

  private

  def client_params
    params.require(:client).permit(:name, :email, :company, :address, :logo)
  end
end
