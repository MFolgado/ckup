class Service < ActiveRecord::Base

	
	has_and_belongs_to_many :order_services
	has_and_belongs_to_many :parts

	accepts_nested_attributes_for :parts
end
