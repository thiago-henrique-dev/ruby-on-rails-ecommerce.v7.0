class ApplicationController < ActionController::Base
   before_action :autorized_params_devise, if: :devise_controller?

   protected
    def autorized_params_devise
        devise_parameter_sanitizer.permit(:sign_up) { |u| 
            u.permit(:name, :email, :password, :password_confirmation, :phone)}
    end
end
