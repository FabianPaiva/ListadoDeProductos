class ClientsController < ApplicationController
  def index
    @clients =Client.all
    @clients = Client.search(params[:term], params[:page])
  end

  def new
    @client = Client.new
  end

  def edit
    @client = Client.find(params[:id])
  end

  def update
    @client = Client.find(params[:id])
    if @client.update(client_params)
      redirect_to clients_path
    else
      render :edit
    end
  end

  def create
    @client = Client.new(client_params)
    if @client.save
      redirect_to clients_path
    else
      render :new
    end
  end

  private
  def  client_params
    params.require(:client).permit(:first_name, :last_name, :document_number, :telephone, :limite_credito, :address, :gender, :ruc, :customer_type, :birth_date )
  end
end
