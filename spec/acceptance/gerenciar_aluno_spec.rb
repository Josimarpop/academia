# coding: utf-8

require 'spec_helper'

feature 'gerenciar aluno' do

  scenario 'incluir aluno', :javascript => true do
    visit new_aluno_path
    preencher_e_verificar_aluno

  end

  scenario 'alterar aluno' do #, :js => true do
    	aluno = FactoryGirl.create(:aluno)
    	visit edit_aluno_path(aluno)
    	preencher_e_verificar_aluno

  end

   scenario 'excluir aluno' do #, :javascript => true do
        aluno = FactoryGirl.create(:aluno)
        visit alunos_path
        click_link 'Excluir'

  end

   def preencher_e_verificar_aluno
      fill_in 'Nome', :with => "Taiane"
      fill_in 'Endereço', :with => "Rua A"
      fill_in 'Bairro', :with => "VN"
      fill_in 'Telefone', :with => "130000"
      fill_in 'E-mail', :with => "t@gmail.com"	     
 
      click_button 'Salvar'

      page.should have_content 'Nome: Taiane'
      page.should have_content 'Endereço: Rua A'
      page.should have_content 'Bairro: VN'
      page.should have_content 'Telefone: 130000'
      page.should have_content 'E-mail: t@gmail.com'

   end
end
