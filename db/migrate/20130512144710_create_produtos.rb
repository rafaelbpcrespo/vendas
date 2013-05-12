class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :nome
      t.string :fabricante
      t.float :valor
      t.string :descricao
      t.string :observacoes

      t.timestamps
    end
  end
end
