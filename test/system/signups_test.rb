require "application_system_test_case"
require 'selenium-webdriver'

class SignupsTest < ApplicationSystemTestCase
  test "usuario faz cadastro com dados válidos" do
    visit "/"
    click_on "Cadastre-se"

    fill_in "Nome", with: "Eu"
    fill_in "E-mail", with: "teste@teste.com"
    fill_in "Senha", with: "minhasenha"
    fill_in "Confirme sua senha", with: "minhasenha"

    click_on "Cadastrar"

    assert_text "Cadastro realizado com sucesso!"
  end
end
