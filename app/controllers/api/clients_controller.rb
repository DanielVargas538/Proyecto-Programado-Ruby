require_relative '../../models/client'
module Api
  class ClientsController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action :set_client, only: %i[ show edit update destroy ]

    def index
      @clients = Client.all
    end

    def show; end

    def new
      @client = Client.new
    end

    def edit; end

    def create
      @client = Client.new(client_params)
      if @client.save
        render status: :created
      else
        render status: :unprocessable_entity 
      end
    end

    def update
      if @client.update(client_params)
        render 'api/clients/show', status: :ok
      else
        render json: @client.errors, status: :unprocessable_entity 
      end
    end

    def destroy
      @client.destroy
      render 'api/clients/index', status: :ok 
    end

    def verify_params
      client = Client.find_by(email: params[:email])
      
      if client.valid_password?(params[:password])
        render plain: 'ok', status: :ok
      else
        render plain: 'Cliente no encontrado', status: :not_found
      end
    end

    private
      def set_client
        @client = Client.find(params[:id])
      end

      def client_params
        client_attributes = params.require(:client).permit(:first_name, :last_name, :phone, :address, :locked, :email)
        client_attributes[:password] = params[:password]
        client_attributes[:password_confirmation] = params[:password_confirmation]
        client_attributes
      end

  end
end