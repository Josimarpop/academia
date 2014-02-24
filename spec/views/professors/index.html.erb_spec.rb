require 'spec_helper'

describe "professors/index" do
  before(:each) do
    assign(:professors, [
      stub_model(Professor,
        :nome => "Nome",
        :endereco => "Endereco",
        :bairro => "Bairro",
        :telefone => "Telefone",
        :email => "Email",
        :salario => "9.99"
      ),
      stub_model(Professor,
        :nome => "Nome",
        :endereco => "Endereco",
        :bairro => "Bairro",
        :telefone => "Telefone",
        :email => "Email",
        :salario => "9.99"
      )
    ])
  end

  it "renders a list of professors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    assert_select "tr>td", :text => "Bairro".to_s, :count => 2
    assert_select "tr>td", :text => "Telefone".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
