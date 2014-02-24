require 'spec_helper'

describe "modalidades/index" do
  before(:each) do
    assign(:modalidades, [
      stub_model(Modalidade,
        :nome => "Nome",
        :caloriasPerdidas => "Caloriasperdidas",
        :valor => "9.99"
      ),
      stub_model(Modalidade,
        :nome => "Nome",
        :caloriasPerdidas => "Caloriasperdidas",
        :valor => "9.99"
      )
    ])
  end

  it "renders a list of modalidades" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Caloriasperdidas".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
