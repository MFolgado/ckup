class Service < ActiveRecord::Base

	
	has_and_belongs_to_many :order_services	

	
end
