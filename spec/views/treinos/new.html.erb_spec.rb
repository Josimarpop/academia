require 'spec_helper'

describe "treinos/new" do
  before(:each) do
    assign(:treino, stub_model(Treino,
      :serie => "MyString",
      :aluno => nil,
      :modalidade => nil
    ).as_new_record)
  end

  it "renders new treino form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", treinos_path, "post" do
      assert_select "input#treino_serie[name=?]", "treino[serie]"
      assert_select "input#treino_aluno[name=?]", "treino[aluno]"
      assert_select "input#treino_modalidade[name=?]", "treino[modalidade]"
    end
  end
end
