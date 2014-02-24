# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :professor do
    nome "MyString"
    endereco "MyString"
    bairro "MyString"
    telefone "MyString"
    email "MyString"
    salario "9.99"
  end
end
