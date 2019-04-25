class ApplicationController < ActionController::Base
	before_action :authenticate_user!

	protected
	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email])
	end
	def after_sign_in_path_for(resource)
		user_path(current_user.id)
	end
end
