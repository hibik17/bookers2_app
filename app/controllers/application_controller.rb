class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
      if current_user
        flash[:notice] = "Signed in successfully."
        user_path(current_user)
      end
  end
  def after_sign_up_path_for(resource)
      if user
      flash[:notice] = "Welcome! You have signed up successfully."
      end
  end
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name ,:email])
  end
end
