# coding: utf-8
require 'spec_helper'

feature 'gerenciar avaliacao' do

  scenario 'incluir avaliacao fisica' do #, :javascript => true do
    aluno = FactoryGirl.create(:aluno, :nome => "XXX")
    professor = FactoryGirl.create(:professor, :nome => 'YYY')
    visit new_avaliacaofisica_path
    preencher_e_verificar_avaliacaofisica  

  end

  scenario 'alterar avaliacao fisica' do #, :javascript => true do
    aluno = FactoryGirl.create(:aluno, :nome => "XXX")
    professor = FactoryGirl.create(:professor, :nome => 'YYY')
    avaliacaofisica = FactoryGirl.create(:avaliacaofisica, :aluno => aluno, :professor => professor)
    visit edit_avaliacaofisica_path(avaliacaofisica)
    preencher_e_verificar_avaliacaofisica

  end

  scenario 'excluir avaliacao fisica' do #, :javascript => true do
    aluno = FactoryGirl.create(:aluno, :nome => "XXX")
    professor = FactoryGirl.create(:professor, :nome => 'YYY')
    avaliacaofisica = FactoryGirl.create(:avaliacaofisica, :aluno => aluno, :professor => professor)
    visit avaliacaofisicas_path
    click_link 'Excluir'
     
  end

  def preencher_e_verificar_avaliacaofisica 
    fill_in 'Peso', :with => "65 K"
    fill_in 'Altura', :with => "1.65 m"
    fill_in 'IMC', :with => "3.20 m"
    fill_in 'Pressao Arterial', :with => "12por8" 
    fill_in 'Peito', :with => "90 cm"
    fill_in 'Cintura', :with => "90 cm"
    fill_in 'Gluteo', :with => "102 cm"
    fill_in 'Braco Direito', :with => "34 cm" 
    fill_in 'Braco Esquerdo', :with => "36 cm"
    fill_in 'Coxa Direita', :with => "66 cm"
    fill_in 'Coxa Esquerda', :with => "65 cm"

    select 'XXX', :from => 'Aluno'
    select 'YYY', :from => 'Professor'
    
    click_button 'Salvar'
    
    page.should have_content 'Peso: 65 K'
    page.should have_content 'Altura: 1.65 m'
    page.should have_content 'IMC: 3.20 m'
    page.should have_content 'Pressao Arterial: 12por8'
    page.should have_content 'Peito: 90 cm'
    page.should have_content 'Cintura: 90 cm'
    page.should have_content 'Gluteo: 102 cm'
    page.should have_content 'Braco Direito: 34 cm'
    page.should have_content 'Braco Esquerdo: 36 cm'
    page.should have_content 'Coxa Direita: 66 cm'
    page.should have_content 'Coxa Esquerda: 65 cm'
    page.should have_content 'Aluno: XXX'
    page.should have_content 'Professor: YYY'
  end   
end
