class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|

      t.string :descricao
      t.string :valor
      t.timestamps
    end
  end
end
