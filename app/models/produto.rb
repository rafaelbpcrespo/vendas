class Produto < ActiveRecord::Base
  attr_accessible :descricao, :fabricante, :nome, :observacoes, :valor
	has_many :pedidos, :through => :itens
end
