require 'spec_helper'

describe "professors/show" do
  before(:each) do
    @professor = assign(:professor, stub_model(Professor,
      :nome => "Nome",
      :endereco => "Endereco",
      :bairro => "Bairro",
      :telefone => "Telefone",
      :email => "Email",
      :salario => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/Endereco/)
    rendered.should match(/Bairro/)
    rendered.should match(/Telefone/)
    rendered.should match(/Email/)
    rendered.should match(/9.99/)
  end
end
