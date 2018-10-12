class ApplicationController < ActionController::Base
	include DeviseWhitelist

	# move this to a concern

	before_action :set_source

	def set_source
		session[:source] = params[:q] if params[:q]
	end

end
