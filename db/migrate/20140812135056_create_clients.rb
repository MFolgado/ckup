class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :nome
      t.string :endereco
      t.string :bairro
      t.string :cidade
      t.string :uf
      t.string :cep
      t.string :email
      t.string :tel
      t.timestamps
    end
  end
end
