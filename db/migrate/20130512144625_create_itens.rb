class CreateItens < ActiveRecord::Migration
  def change
    create_table :itens do |t|
      t.integer :tipo_de_produto_id
      t.integer :produto_id
      t.float :valor
      t.integer :quantitade_produto
      t.string :observacoes

      t.timestamps
    end
  end
end
