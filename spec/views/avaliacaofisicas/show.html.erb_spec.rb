require 'spec_helper'

describe "avaliacaofisicas/show" do
  before(:each) do
    @avaliacaofisica = assign(:avaliacaofisica, stub_model(Avaliacaofisica,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Peso/)
    rendered.should match(/Altura/)
    rendered.should match(/Imc/)
    rendered.should match(/Pressaoarterial/)
    rendered.should match(/Peito/)
    rendered.should match(/Cintura/)
    rendered.should match(/Gluteo/)
    rendered.should match(/Bracodireito/)
    rendered.should match(/Bracoesquerdo/)
    rendered.should match(/Coxadireita/)
    rendered.should match(/Coxaesquerda/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
