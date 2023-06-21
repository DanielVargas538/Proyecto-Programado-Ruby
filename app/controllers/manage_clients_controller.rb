class ManageClientsController < ApplicationController
  before_action :set_manage_clients, only: %i[ show edit update destroy ]

  def index
    @clients = Client.all
  end
  
end
