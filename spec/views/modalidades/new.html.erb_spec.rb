require 'spec_helper'

describe "modalidades/new" do
  before(:each) do
    assign(:modalidade, stub_model(Modalidade,
      :nome => "MyString",
      :caloriasPerdidas => "MyString",
      :valor => "9.99"
    ).as_new_record)
  end

  it "renders new modalidade form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", modalidades_path, "post" do
      assert_select "input#modalidade_nome[name=?]", "modalidade[nome]"
      assert_select "input#modalidade_caloriasPerdidas[name=?]", "modalidade[caloriasPerdidas]"
      assert_select "input#modalidade_valor[name=?]", "modalidade[valor]"
    end
  end
end
