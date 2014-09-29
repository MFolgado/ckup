class Parts < ActiveRecord::Migration
  def change
  	create_table :parts do |t|

      t.string :descricao
      t.string :modelo
      t.float :p_compra
      t.float :p_venda
      t.integer :quantidade
      t.float :lucro
      
      t.timestamps
    end
  end
end
