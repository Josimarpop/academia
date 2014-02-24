require 'spec_helper'

describe "alunos/index" do
  before(:each) do
    assign(:alunos, [
      stub_model(Aluno,
        :nome => "Nome",
        :endereco => "Endereco",
        :bairro => "Bairro",
        :telefone => "Telefone",
        :email => "Email"
      ),
      stub_model(Aluno,
        :nome => "Nome",
        :endereco => "Endereco",
        :bairro => "Bairro",
        :telefone => "Telefone",
        :email => "Email"
      )
    ])
  end

  it "renders a list of alunos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    assert_select "tr>td", :text => "Bairro".to_s, :count => 2
    assert_select "tr>td", :text => "Telefone".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
