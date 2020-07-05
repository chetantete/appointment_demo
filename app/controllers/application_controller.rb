class ApplicationController < ActionController::Base

 before_action :configure_permitted_parameters, if: :devise_controller?
 def find_role
  current_user.roles.first.name
end
protected

def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :address, :phone_number, :user_name, :role_name])
end
end
