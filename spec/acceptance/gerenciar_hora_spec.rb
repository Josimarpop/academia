# coding: utf-8
require 'spec_helper'

feature 'gerenciar hora' do

  scenario 'incluir hora' do #, :javascript => true do

    aluno = FactoryGirl.create(:aluno, :nome => "YYY")
    professor = FactoryGirl.create(:professor, :nome => 'XXX')

    visit new_hora_path

    preencher_e_verificar_hora
   
  end

  scenario 'alterar hora' do #, :javascript => true do
    aluno = FactoryGirl.create(:aluno, :nome => "YYY")
    professor = FactoryGirl.create(:professor, :nome => 'XXX')
    hora = FactoryGirl.create(:hora,:aluno => aluno,:professor => professor)
    visit edit_hora_path(hora)
    preencher_e_verificar_hora
  end

  scenario 'excluir hora' do #, :javascript => true do
    aluno = FactoryGirl.create(:aluno, :nome => "YYY")
    professor = FactoryGirl.create(:professor, :nome => 'XXX')
    hora = FactoryGirl.create(:hora,:aluno => aluno,:professor => professor)
    visit horas_path
    click_link 'Excluir'
       
  end

  def preencher_e_verificar_hora
    fill_in 'Horário', :with => "18 h"

    select 'YYY', :from => 'Aluno'
    select 'XXX', :from => 'Professor'
    
    click_button 'Salvar'

    page.should have_content 'Horário: 18 h'
    page.should have_content 'Aluno: YYY'
    page.should have_content 'Professor: XXX'
   
 
  end
end
