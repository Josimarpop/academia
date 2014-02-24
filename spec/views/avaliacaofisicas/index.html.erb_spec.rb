require 'spec_helper'

describe "avaliacaofisicas/index" do
  before(:each) do
    assign(:avaliacaofisicas, [
      stub_model(Avaliacaofisica,
        :peso => "Peso",
        :altura => "Altura",
        :imc => "Imc",
        :pressaoArterial => "Pressaoarterial",
        :peito => "Peito",
        :cintura => "Cintura",
        :gluteo => "Gluteo",
        :bracoDireito => "Bracodireito",
        :bracoEsquerdo => "Bracoesquerdo",
        :coxaDireita => "Coxadireita",
        :coxaEsquerda => "Coxaesquerda",
        :aluno => nil,
        :professor => nil
      ),
      stub_model(Avaliacaofisica,
        :peso => "Peso",
        :altura => "Altura",
        :imc => "Imc",
        :pressaoArterial => "Pressaoarterial",
        :peito => "Peito",
        :cintura => "Cintura",
        :gluteo => "Gluteo",
        :bracoDireito => "Bracodireito",
        :bracoEsquerdo => "Bracoesquerdo",
        :coxaDireita => "Coxadireita",
        :coxaEsquerda => "Coxaesquerda",
        :aluno => nil,
        :professor => nil
      )
    ])
  end

  it "renders a list of avaliacaofisicas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Peso".to_s, :count => 2
    assert_select "tr>td", :text => "Altura".to_s, :count => 2
    assert_select "tr>td", :text => "Imc".to_s, :count => 2
    assert_select "tr>td", :text => "Pressaoarterial".to_s, :count => 2
    assert_select "tr>td", :text => "Peito".to_s, :count => 2
    assert_select "tr>td", :text => "Cintura".to_s, :count => 2
    assert_select "tr>td", :text => "Gluteo".to_s, :count => 2
    assert_select "tr>td", :text => "Bracodireito".to_s, :count => 2
    assert_select "tr>td", :text => "Bracoesquerdo".to_s, :count => 2
    assert_select "tr>td", :text => "Coxadireita".to_s, :count => 2
    assert_select "tr>td", :text => "Coxaesquerda".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
