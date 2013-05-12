class LocalDeEntrega < ActiveRecord::Base
  attr_accessible :endereco, :nome, :referencia
	has_many :pedidos
end
