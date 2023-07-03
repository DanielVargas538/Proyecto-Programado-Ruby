require_relative '../models/user'
class ManageUsersController < ApplicationController
  before_action :set_manage_user, only: %i[ show edit update destroy ]

  def index
    @manage_users = User.all
  end

  def show; end

  def new
    @manage_user = User.new
  end

  def edit; end

  def create
    @manage_user = User.new(manage_user_params)

    if @manage_user.save
      redirect_to manage_user_url(@manage_user), notice: "Manage user was successfully created." 
    else
      render :new, status: :unprocessable_entity 
    end
  end

  def update
      if @manage_user.update(manage_user_params)
        redirect_to manage_user_url(@manage_user), notice: "Manage user was successfully updated." 
      else
        render :edit, status: :unprocessable_entity 
      end
  end

  def toggle_block
    @manage_user = User.find(params[:id])
    @manage_user.update(blocked: !@manage_user.blocked)
    redirect_to manage_users_url, notice: "El estado del cliente ha sido actualizado."
  end  

  def toggle_block
    @manage_user = User.find(params[:id])
    @manage_user.update(blocked: !@manage_user.blocked)
    redirect_to manage_users_url, notice: "El estado del cliente ha sido actualizado."
  end

  def destroy
    @manage_user.destroy
    redirect_to manage_users_url, notice: "Manage user was successfully destroyed." 
  end

  private
    def set_manage_user
      @manage_user = User.find(params[:id])
    end

    def manage_user_params
      params.require(:user).permit(:name, :role, :email, :password , :password_confirmation)
    end
end
