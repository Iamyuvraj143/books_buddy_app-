class ApplicationController < ActionController::Base
	before_action :configure_sign_up_params_permitted_parameters, if: :devise_controller?
  before_action :configure_account_update_permitted_parameters, if: :devise_controller?

  

  protected

  def configure_sign_up_params_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys:  %i[name city date_of_birth])
  end

  def configure_account_update_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: %i[name city date_of_birth])
  end
end
