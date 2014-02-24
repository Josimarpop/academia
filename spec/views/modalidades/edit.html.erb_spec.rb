require 'spec_helper'

describe "modalidades/edit" do
  before(:each) do
    @modalidade = assign(:modalidade, stub_model(Modalidade,
      :nome => "MyString",
      :caloriasPerdidas => "MyString",
      :valor => "9.99"
    ))
  end

  it "renders the edit modalidade form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", modalidade_path(@modalidade), "post" do
      assert_select "input#modalidade_nome[name=?]", "modalidade[nome]"
      assert_select "input#modalidade_caloriasPerdidas[name=?]", "modalidade[caloriasPerdidas]"
      assert_select "input#modalidade_valor[name=?]", "modalidade[valor]"
    end
  end
end
