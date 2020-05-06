require "application_system_test_case"

class TecnologiasTest < ApplicationSystemTestCase
  setup do
    @tecnologia = tecnologias(:one)
  end

  test "visiting the index" do
    visit tecnologias_url
    assert_selector "h1", text: "Tecnologias"
  end

  test "creating a Tecnologia" do
    visit tecnologias_url
    click_on "New Tecnologia"

    fill_in "Nombre", with: @tecnologia.nombre
    click_on "Create Tecnologia"

    assert_text "Tecnologia was successfully created"
    click_on "Back"
  end

  test "updating a Tecnologia" do
    visit tecnologias_url
    click_on "Edit", match: :first

    fill_in "Nombre", with: @tecnologia.nombre
    click_on "Update Tecnologia"

    assert_text "Tecnologia was successfully updated"
    click_on "Back"
  end

  test "destroying a Tecnologia" do
    visit tecnologias_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tecnologia was successfully destroyed"
  end
end
