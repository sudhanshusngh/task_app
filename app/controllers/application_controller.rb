class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?

    before_action :authenticate_user!

    protected

        def configure_permitted_parameters
            devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, :role, :avatar) }
            devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:email, :password, :current_password, :role, :avatar) }
        end
end
