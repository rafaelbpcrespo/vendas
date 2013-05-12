# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :item do
    tipo_de_produto_id 1
    produto_id 1
    valor 1.5
    quantitade_produto 1
    observacoes "MyString"
  end
end
