require 'spec_helper'

describe "horas/edit" do
  before(:each) do
    @hora = assign(:hora, stub_model(Hora,
      :horario => "MyString",
      :aluno => nil,
      :professor => nil
    ))
  end

  it "renders the edit hora form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", hora_path(@hora), "post" do
      assert_select "input#hora_horario[name=?]", "hora[horario]"
      assert_select "input#hora_aluno[name=?]", "hora[aluno]"
      assert_select "input#hora_professor[name=?]", "hora[professor]"
    end
  end
end
