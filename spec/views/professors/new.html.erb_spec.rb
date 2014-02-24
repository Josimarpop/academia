require 'spec_helper'

describe "professors/new" do
  before(:each) do
    assign(:professor, stub_model(Professor,
      :nome => "MyString",
      :endereco => "MyString",
      :bairro => "MyString",
      :telefone => "MyString",
      :email => "MyString",
      :salario => "9.99"
    ).as_new_record)
  end

  it "renders new professor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", professors_path, "post" do
      assert_select "input#professor_nome[name=?]", "professor[nome]"
      assert_select "input#professor_endereco[name=?]", "professor[endereco]"
      assert_select "input#professor_bairro[name=?]", "professor[bairro]"
      assert_select "input#professor_telefone[name=?]", "professor[telefone]"
      assert_select "input#professor_email[name=?]", "professor[email]"
      assert_select "input#professor_salario[name=?]", "professor[salario]"
    end
  end
end
