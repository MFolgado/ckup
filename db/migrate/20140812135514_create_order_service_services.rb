class CreateOrderServiceServices < ActiveRecord::Migration
  def change
    create_table :order_services_services do |t|

      t.belongs_to :service
      t.belongs_to :order_service
      t.belongs_to :part
      
      t.timestamps
    end
  end
end
