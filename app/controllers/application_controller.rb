class ApplicationController < ActionController::Base
    include Pagy::Backend
    before_action :configure_permitted_parameters, if: :devise_controller?
  
    protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:restaurants_id])
      devise_parameter_sanitizer.permit(:sign_in, keys: [:restaurants_id])
      devise_parameter_sanitizer.permit(:account_update,keys: [:restaurants_id])
    end

    def after_sign_in_path_for(resource)
      dashboard_path
    end
end
