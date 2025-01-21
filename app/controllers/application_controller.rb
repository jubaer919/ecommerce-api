class ApplicationController < ActionController::API
  before_action :configure_permited_perameter, if: :devise_controller?
  protected

  def configure_permited_perameter
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[name])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[name])
  end
end
