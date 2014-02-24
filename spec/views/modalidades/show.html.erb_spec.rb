require 'spec_helper'

describe "modalidades/show" do
  before(:each) do
    @modalidade = assign(:modalidade, stub_model(Modalidade,
      :nome => "Nome",
      :caloriasPerdidas => "Caloriasperdidas",
      :valor => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/Caloriasperdidas/)
    rendered.should match(/9.99/)
  end
end
