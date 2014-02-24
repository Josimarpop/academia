require 'spec_helper'

describe "horas/new" do
  before(:each) do
    assign(:hora, stub_model(Hora,
      :horario => "MyString",
      :aluno => nil,
      :professor => nil
    ).as_new_record)
  end

  it "renders new hora form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", horas_path, "post" do
      assert_select "input#hora_horario[name=?]", "hora[horario]"
      assert_select "input#hora_aluno[name=?]", "hora[aluno]"
      assert_select "input#hora_professor[name=?]", "hora[professor]"
    end
  end
end
