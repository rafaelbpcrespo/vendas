class Pedido < ActiveRecord::Base
  attr_accessible :cliente_id, :local_de_entrega, :valor_total
	belongs_to :cliente
	belongs_to :local_de_entrega
	has_many :produtos, :through => :itens
	accepts_nested_attributes_for :produtos
end
