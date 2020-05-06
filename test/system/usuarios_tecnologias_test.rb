require "application_system_test_case"

class UsuarioTecnologiasTest < ApplicationSystemTestCase
  setup do
    @usuario_tecnologia = usuarios_tecnologias(:one)
  end

  test "visiting the index" do
    visit usuarios_tecnologias_url
    assert_selector "h1", text: "Usuario Tecnologias"
  end

  test "creating a Usuario tecnologia" do
    visit usuarios_tecnologias_url
    click_on "New Usuario Tecnologia"

    fill_in "Tecnologia id", with: @usuario_tecnologia.tecnologia_id_id
    fill_in "Usuario id", with: @usuario_tecnologia.usuario_id_id
    click_on "Create Usuario tecnologia"

    assert_text "Usuario tecnologia was successfully created"
    click_on "Back"
  end

  test "updating a Usuario tecnologia" do
    visit usuarios_tecnologias_url
    click_on "Edit", match: :first

    fill_in "Tecnologia id", with: @usuario_tecnologia.tecnologia_id_id
    fill_in "Usuario id", with: @usuario_tecnologia.usuario_id_id
    click_on "Update Usuario tecnologia"

    assert_text "Usuario tecnologia was successfully updated"
    click_on "Back"
  end

  test "destroying a Usuario tecnologia" do
    visit usuarios_tecnologias_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Usuario tecnologia was successfully destroyed"
  end
end
