# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :produto do
    nome "MyString"
    fabricante "MyString"
    valor 1.5
    descricao "MyString"
    observacoes "MyString"
  end
end
