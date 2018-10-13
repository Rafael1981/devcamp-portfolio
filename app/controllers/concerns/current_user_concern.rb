module CurrentUserConcern
extend ActiveSupport::Concern

	def current_user
		super ||  guest_user
	end

#moving the big line from the code into its own method, as a good practice
	def guest_user
		OpenStruct.new(	name: "Guest User", 
										first_name: "Guest", 
										last_name: "User", 
										email: "guest@guest.com"
									)
	end
end