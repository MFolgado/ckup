class Client < ActiveRecord::Base

	has_many :order_services
	has_many :services, through: :order_services
  has_many :parts, through: :order_services
	
end
