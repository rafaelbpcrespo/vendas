class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.float :valor_total
      t.integer :cliente_id
      t.integer :local_de_entrega_id

      t.timestamps
    end
  end
end
