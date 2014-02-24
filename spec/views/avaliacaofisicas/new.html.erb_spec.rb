require 'spec_helper'

describe "avaliacaofisicas/new" do
  before(:each) do
    assign(:avaliacaofisica, stub_model(Avaliacaofisica,
      :peso => "MyString",
      :altura => "MyString",
      :imc => "MyString",
      :pressaoArterial => "MyString",
      :peito => "MyString",
      :cintura => "MyString",
      :gluteo => "MyString",
      :bracoDireito => "MyString",
      :bracoEsquerdo => "MyString",
      :coxaDireita => "MyString",
      :coxaEsquerda => "MyString",
      :aluno => nil,
      :professor => nil
    ).as_new_record)
  end

  it "renders new avaliacaofisica form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", avaliacaofisicas_path, "post" do
      assert_select "input#avaliacaofisica_peso[name=?]", "avaliacaofisica[peso]"
      assert_select "input#avaliacaofisica_altura[name=?]", "avaliacaofisica[altura]"
      assert_select "input#avaliacaofisica_imc[name=?]", "avaliacaofisica[imc]"
      assert_select "input#avaliacaofisica_pressaoArterial[name=?]", "avaliacaofisica[pressaoArterial]"
      assert_select "input#avaliacaofisica_peito[name=?]", "avaliacaofisica[peito]"
      assert_select "input#avaliacaofisica_cintura[name=?]", "avaliacaofisica[cintura]"
      assert_select "input#avaliacaofisica_gluteo[name=?]", "avaliacaofisica[gluteo]"
      assert_select "input#avaliacaofisica_bracoDireito[name=?]", "avaliacaofisica[bracoDireito]"
      assert_select "input#avaliacaofisica_bracoEsquerdo[name=?]", "avaliacaofisica[bracoEsquerdo]"
      assert_select "input#avaliacaofisica_coxaDireita[name=?]", "avaliacaofisica[coxaDireita]"
      assert_select "input#avaliacaofisica_coxaEsquerda[name=?]", "avaliacaofisica[coxaEsquerda]"
      assert_select "input#avaliacaofisica_aluno[name=?]", "avaliacaofisica[aluno]"
      assert_select "input#avaliacaofisica_professor[name=?]", "avaliacaofisica[professor]"
    end
  end
end
