class ManageClientsController < ApplicationController
  before_action :set_manage_clients, only: %i[ show edit update destroy ]

  def index
    @manage_clients = ManageClient.all
  end
  
end
