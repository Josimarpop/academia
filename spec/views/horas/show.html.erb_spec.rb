require 'spec_helper'

describe "horas/show" do
  before(:each) do
    @hora = assign(:hora, stub_model(Hora,
      :horario => "Horario",
      :aluno => nil,
      :professor => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Horario/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
