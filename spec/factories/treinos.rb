# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :treino do
    serie "MyString"
    data "2014-02-24"
    aluno nil
    modalidade nil
  end
end
