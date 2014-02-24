require 'spec_helper'

describe "professors/edit" do
  before(:each) do
    @professor = assign(:professor, stub_model(Professor,
      :nome => "MyString",
      :endereco => "MyString",
      :bairro => "MyString",
      :telefone => "MyString",
      :email => "MyString",
      :salario => "9.99"
    ))
  end

  it "renders the edit professor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", professor_path(@professor), "post" do
      assert_select "input#professor_nome[name=?]", "professor[nome]"
      assert_select "input#professor_endereco[name=?]", "professor[endereco]"
      assert_select "input#professor_bairro[name=?]", "professor[bairro]"
      assert_select "input#professor_telefone[name=?]", "professor[telefone]"
      assert_select "input#professor_email[name=?]", "professor[email]"
      assert_select "input#professor_salario[name=?]", "professor[salario]"
    end
  end
end
