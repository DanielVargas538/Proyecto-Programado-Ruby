# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
    before_action :configure_sign_in_params, only: [:create]
  
  
    # GET /resource/sign_in
    def new
        super
    end
  
    # POST /resource/sign_in
    def create
      begin
        user = User.find_by(email: params[:user][:email])
        Rails.logger.info(user.role)
        if user.role === 'administrator'
          super
        else
          flash[:alert] = t('activerecord.errors.permited', model: t('activerecord.modules.user.one'))
          redirect_to user_session_path
        end
      rescue
        flash[:alert] = t('activerecord.errors.not_found', model: t('activerecord.modules.user.one'))
        redirect_to user_session_path
      end
    end
  
    # DELETE /resource/sign_out
    def destroy
        super
    end

    # protected
  
    # If you have extra params to permit, append them to the sanitizer.
    def configure_sign_in_params
        devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
    end
end