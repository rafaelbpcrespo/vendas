# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :pedido do
    valor_total 1.5
    cliente_id 1
    local_de_entrega ""
  end
end
