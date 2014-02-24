require 'spec_helper'

describe "horas/index" do
  before(:each) do
    assign(:horas, [
      stub_model(Hora,
        :horario => "Horario",
        :aluno => nil,
        :professor => nil
      ),
      stub_model(Hora,
        :horario => "Horario",
        :aluno => nil,
        :professor => nil
      )
    ])
  end

  it "renders a list of horas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Horario".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
