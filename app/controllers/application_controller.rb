class ApplicationController < ActionController::Base

	# not the best practice, but whitelist here is an option

	before_action :configure_permitted_parameters, if: :devise_controller?

	def configure_permitted_parameters  
		#just adding the "name" to devise list, "email" and "password" are already there
		devise_parameter_sanitizer.permit(:sign_up, keys: [:name])		
		devise_parameter_sanitizer.permit(:account_update, keys: [:name])		
	end

end
