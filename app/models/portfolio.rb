class Portfolio < ApplicationRecord

	validates_presence_of :title, :body, :main_image, :thumb_image



# forms of using scope
  #creating a ruby method
	def self.angular
		where(subtitle: 'Angular')
	end
#using an actual scope (prefer form, as it uses less code)
	scope :ruby_on_rails_port_items, -> {where(subtitle: 'Ruby on Rails')}
end

