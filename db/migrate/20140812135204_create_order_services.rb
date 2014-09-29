class CreateOrderServices < ActiveRecord::Migration
  def change
    create_table :order_services do |t|
      t.belongs_to :client
      t.date :date	

      t.timestamps
    end
  end
end
