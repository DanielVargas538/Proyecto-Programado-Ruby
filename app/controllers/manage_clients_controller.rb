class ManageClientsController < ApplicationController
  before_action :set_manage_clients, only: %i[ show edit update destroy ]

  def index
    @manage_clients = ManageClient.all
  end
  

  def show; end

  def new
    @manage_client = ManageClient.new
  end

  def edit; end

  def create
    @manage_client = ManageClient.new(manage_client_params)

    if @manage_client.save
      redirect_to manage_client_url(@manage_client), notice: t('application.create_message', model: t('activerecord.modules.manage_client.one')) 
    else
      render :new, status: :unprocessable_entity 
    end
  end

  def update
      if @manage_client.update(manage_client_params)
        redirect_to manage_client_url(@manage_client), notice: t('application.update_message', model: t('activerecord.modules.manage_client.one')) 
      else
        render :edit, status: :unprocessable_entity 
    end
  end

  def destroy
    @manage_client.destroy
    redirect_to manage_clients_url, notice: t('application.delete_message', model: t('activerecord.modules.manage_client.one')) 
  end

  private
    def set_manage_client
      @manage_client = ManageClient.find(params[:id])
    end

    def manage_client_params
      params.require(:manage_client).permit(:name, :description, :price, :photo, :available)
    end

end
