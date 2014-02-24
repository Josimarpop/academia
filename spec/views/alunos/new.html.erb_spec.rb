require 'spec_helper'

describe "alunos/new" do
  before(:each) do
    assign(:aluno, stub_model(Aluno,
      :nome => "MyString",
      :endereco => "MyString",
      :bairro => "MyString",
      :telefone => "MyString",
      :email => "MyString"
    ).as_new_record)
  end

  it "renders new aluno form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", alunos_path, "post" do
      assert_select "input#aluno_nome[name=?]", "aluno[nome]"
      assert_select "input#aluno_endereco[name=?]", "aluno[endereco]"
      assert_select "input#aluno_bairro[name=?]", "aluno[bairro]"
      assert_select "input#aluno_telefone[name=?]", "aluno[telefone]"
      assert_select "input#aluno_email[name=?]", "aluno[email]"
    end
  end
end
