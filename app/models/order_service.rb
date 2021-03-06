class OrderService < ActiveRecord::Base

	belongs_to :client
	has_and_belongs_to_many :services, :dependent => :destroy
	has_and_belongs_to_many :parts, :dependent => :destroy

	accepts_nested_attributes_for :services
	accepts_nested_attributes_for :parts
	
end
