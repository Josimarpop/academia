# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :hora do
    horario "MyString"
    aluno nil
    professor nil
  end
end
