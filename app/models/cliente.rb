class Cliente < ActiveRecord::Base
attr_accessible :celular, :email, :empresa_id, :endereco, :nome, :ramal, :telefone_principal, :telefone_secundario
	belongs_to :empresa
	has_many :pedidos
end
