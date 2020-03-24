class ApplicationController < ActionController::Base

layout :set_layout

def set_layout
    if current_user
      'profil'
    else
      'application'
    end
 end
    protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

        def configure_permitted_parameters
            devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:first_name, :last_name, :description, :email, :password, :city_id) }
            devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:first_name, :last_name, :description, :email, :password, :current_password, :city_id) }
        end

 # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
 

end


