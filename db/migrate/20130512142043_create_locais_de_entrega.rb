class CreateLocaisDeEntrega < ActiveRecord::Migration
  def change
    create_table :locais_de_entrega do |t|
      t.string :nome
      t.string :endereco
      t.string :referencia

      t.timestamps
    end
  end
end
