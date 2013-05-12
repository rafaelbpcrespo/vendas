class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :endereco
      t.string :email
      t.string :celular
      t.string :telefone_principal
      t.string :telefone_secundario
      t.string :ramal
      t.integer :empresa_id

      t.timestamps
    end
  end
end
