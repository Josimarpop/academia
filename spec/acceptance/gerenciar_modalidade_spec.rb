# coding: utf-8

require 'spec_helper'

feature 'gerenciar modalidade' do

  scenario 'incluir modalidade', :javascript => true do
    visit new_modalidade_path
    preencher_e_verificar_modalidade
 
  end

  scenario 'alterar modalidade' do #, :js => true do
    modalidade = FactoryGirl.create(:modalidade)
    visit edit_modalidade_path(modalidade)
    preencher_e_verificar_modalidade

  end

   scenario 'excluir modalidade' do #, :javascript => true do
       modalidade = FactoryGirl.create(:modalidade)
       visit modalidades_path
       click_link 'Excluir'

  end

   def preencher_e_verificar_modalidade
      fill_in 'Nome', :with => "Natação"
      fill_in 'Calorias Perdidas', :with => "400"
      fill_in 'Valor', :with => "100"
      
      click_button 'Salvar'

      page.should have_content 'Nome: Natação'
      page.should have_content 'Calorias Perdidas: 400'
      page.should have_content 'Valor: 100'

   end
end
