# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :avaliacaofisica do
    peso "MyString"
    altura "MyString"
    imc "MyString"
    pressaoArterial "MyString"
    peito "MyString"
    cintura "MyString"
    gluteo "MyString"
    bracoDireito "MyString"
    bracoEsquerdo "MyString"
    coxaDireita "MyString"
    coxaEsquerda "MyString"
    aluno nil
    professor nil
  end
end
