class Item < ActiveRecord::Base
  attr_accessible :observacoes, :produto_id, :quantitade_produto, :tipo_de_produto_id, :valor
	belongs_to :produto
	belongs_to :pedido
end
