class ManageClientsController < ApplicationController
  before_action :set_manage_client, only: %i[show edit update destroy]

  def index
    @manage_clients = ManageClient.all
  end

  def show; end

  def edit; end

  def update
    if @manage_client.update(locked: !@manage_client.locked)
      redirect_to manage_clients_path, notice: t('application.update_message', model: t('activerecord.modules.manage_client.one'))
    else
      redirect_to manage_clients_path, notice: 'Error'
    end  
  end

  private
  def set_manage_client
    @manage_client = ManageClient.find(params[:id])
  end

end
