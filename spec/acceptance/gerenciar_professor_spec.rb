# coding: utf-8

require 'spec_helper'

feature 'gerenciar professor' do

  scenario 'incluir professor', :javascript => true do
    visit new_professor_path
    preencher_e_verificar_professor

  end

  scenario 'alterar professor' do #, :js => true do
    professor = FactoryGirl.create(:professor)
    visit edit_professor_path(professor)
    preencher_e_verificar_professor

  end

   scenario 'excluir professor' do #, :javascript => true do
       professor = FactoryGirl.create(:professor)
        visit professors_path
        click_link 'Excluir'

  end

   def preencher_e_verificar_professor
      fill_in 'Nome', :with => "Lucas"
      fill_in 'Endereço', :with => "Rua B"
      fill_in 'Bairro', :with => "CN"
      fill_in 'Telefone', :with => "130222"
      fill_in 'E-mail', :with => "l@hotmail.com"
      fill_in 'Salário', :with => "130"
 
      click_button 'Salvar'

      page.should have_content 'Nome: Lucas'
      page.should have_content 'Endereço: Rua B'
      page.should have_content 'Bairro: CN'
      page.should have_content 'Telefone: 130222'
      page.should have_content 'E-mail: l@hotmail.com'
      page.should have_content 'Salário: 130'
   end
end
