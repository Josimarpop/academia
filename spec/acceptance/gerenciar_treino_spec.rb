# coding: utf-8
require 'spec_helper'

feature 'gerenciar treino' do

  scenario 'incluir treino' do #, :javascript => true do

    aluno = FactoryGirl.create(:aluno, :nome => "YYY")
    modalidade = FactoryGirl.create(:modalidade, :nome => 'XXX')

    visit new_treino_path

    preencher_e_verificar_treino
   
  end

  scenario 'alterar treino' do #, :javascript => true do
    aluno = FactoryGirl.create(:aluno, :nome => "YYY")
    modalidade = FactoryGirl.create(:modalidade, :nome => 'XXX')
    treino = FactoryGirl.create(:treino,:aluno => aluno,:modalidade => modalidade)
    visit edit_treino_path(treino)
    preencher_e_verificar_treino
  end

  scenario 'excluir treino' do #, :javascript => true do
    aluno = FactoryGirl.create(:aluno, :nome => "YYY")
    modalidade = FactoryGirl.create(:modalidade, :nome => 'XXX')
    treino = FactoryGirl.create(:treino,:aluno => aluno,:modalidade => modalidade)
    visit treinos_path
    click_link 'Excluir'
       
  end

  def preencher_e_verificar_treino

    fill_in 'Serie', :with => "5min esteira"
    fill_in 'Data', :with => "2014-02-10"

    select 'YYY', :from => 'Aluno'
    select 'XXX', :from => 'Modalidade'

    click_button 'Salvar'
    
    page.should have_content 'Serie: 5min esteira'
    page.should have_content 'Data: 2014-02-10'
    page.should have_content 'Aluno: YYY'
    page.should have_content 'Modalidade: XXX'
  end
end
