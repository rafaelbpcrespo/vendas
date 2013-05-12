# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :cliente do
    nome "MyString"
    endereco "MyString"
    email "MyString"
    celular "MyString"
    telefone_principal "MyString"
    telefone_secundario "MyString"
    ramal "MyString"
    empresa_id 1
  end
end
