module Api
  class UserLogsController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action :set_user_log, only: %i[ show edit update destroy ]

    def index
      @user_logs = UserLog.all
    end

    def show; end

    def new
      @user_log = UserLog.new
    end

    def edit; end

    def create
      @user_log = UserLog.new(user_log_params)
      if @user_log.save
        render 'api/users_log/show', status: :created
      else
        render json: @user_log.errors, status: :unprocessable_entity
      end
    end

    def update
      if @user_log.update(user_log_params)
        render 'api/users_log/show', status: :ok
      else
        render :edit, status: :unprocessable_entity
      end
    end

    def toggle_block
      @user_log = UserLog.find(params[:id])
      @user_log.update(blocked: !@user_log.blocked)
      render 'api/users_log/index', status: :ok
    end

    
    def destroy
      @user_log.destroy
      render 'api/users_log/index', status: :ok
    end

    def verify_params
      user = UserLog.find_by(email: params[:email])
      
      if user.valid_password?(params[:password] )&& !user.role
        render plain: 'ok', status: :ok
      else
        render plain: 'Usuario no encontrado', status: :not_found
      end
    end

    private
      def set_user_log
        @user_log = UserLog.find(params[:id])
      end

      def user_log_params
        params.require(:user).permit(:name, :role, :email, :password , :password_confirmation)
      end
  end
end
