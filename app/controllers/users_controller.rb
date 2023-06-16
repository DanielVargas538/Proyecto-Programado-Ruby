class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]

  def index
    @users = User.all
  end

  def show; end

  def new
    @user = User.new
  end

  def edit; end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to user_url(@user), notice: t('application.create_message', model: t('activerecord.modules.user.one'))
    else
      render :new, status: :unprocessable_entity 
    end
  end

  def update
    if @user.update(user_params)
      redirect_to user_url(@user), notice: t('application.update_message', model: t('activerecord.modules.user.one')) 
    else
      render :edit, status: :unprocessable_entity 
    end
  end

  def destroy
    @user.destroy

    redirect_to users_url, notice: t('application.delete_message', model: t('activerecord.modules.user.one')) 
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :role, :password)
    end
end
