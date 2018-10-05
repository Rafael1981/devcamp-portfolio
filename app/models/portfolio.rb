class Portfolio < ApplicationRecord
	has_many :technologies
	accepts_nested_attributes_for :technologies, 
																reject_if: lambda { |attrs| attrs['name'].blank?}


	include Placeholder #including the Placeholder concern to set a default image/badge

	validates_presence_of :title, :body, :main_image, :thumb_image



# forms of using scope
  #creating a ruby method
	def self.angular
		where(subtitle: 'Angular')
	end
#using an actual scope (prefered form, as it uses less code)
	scope :ruby_on_rails_port_items, -> {where(subtitle: 'Ruby on Rails')}



	after_initialize :set_defaults

	def set_defaults
		self.main_image  ||= Placeholder.image_generator(height: '600', width: '400')
		self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
	end
end

