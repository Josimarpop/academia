require 'spec_helper'

describe "treinos/index" do
  before(:each) do
    assign(:treinos, [
      stub_model(Treino,
        :serie => "Serie",
        :aluno => nil,
        :modalidade => nil
      ),
      stub_model(Treino,
        :serie => "Serie",
        :aluno => nil,
        :modalidade => nil
      )
    ])
  end

  it "renders a list of treinos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Serie".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
