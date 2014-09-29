class PartsServices < ActiveRecord::Migration
  def change
  	create_table :parts_services do |t|

      t.belongs_to :service
      t.belongs_to :part
      
      t.timestamps
    end

  end
end
