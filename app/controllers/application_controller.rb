class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :update_allowed_parameters, if: :devise_controller?

  protected

  def update_allowed_parameters
    if resource_class == User
      devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :role, :email, :password , :password_confirmation)}
      devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :role, :email, :password, :current_password)}
    else
      devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:first_name, :last_name, :phone, :address, :locked, :email, :password, :password_confirmation)}
      devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:first_name, :last_name, :phone, :address, :locked, :email, :password, :current_password)}
    end
  end
end
