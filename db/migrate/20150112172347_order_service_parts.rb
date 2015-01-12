class OrderServiceParts < ActiveRecord::Migration
  def change
      create_table :order_services_parts do |t|
        t.belongs_to :part
        t.belongs_to :order_service

        t.timestamps
      end
  end  
end
