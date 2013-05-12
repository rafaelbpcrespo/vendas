class Empresa < ActiveRecord::Base
  attr_accessible :endereco_sede, :nome
	has_many :clientes
end
