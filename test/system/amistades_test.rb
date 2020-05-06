require "application_system_test_case"

class AmistadesTest < ApplicationSystemTestCase
  setup do
    @amistad = amistades(:one)
  end

  test "visiting the index" do
    visit amistades_url
    assert_selector "h1", text: "Amistades"
  end

  test "creating a Amistad" do
    visit amistades_url
    click_on "New Amistad"

    fill_in "Amigo id", with: @amistad.amigo_id_id
    check "Confirmada" if @amistad.confirmada
    fill_in "Usuario id", with: @amistad.usuario_id_id
    click_on "Create Amistad"

    assert_text "Amistad was successfully created"
    click_on "Back"
  end

  test "updating a Amistad" do
    visit amistades_url
    click_on "Edit", match: :first

    fill_in "Amigo id", with: @amistad.amigo_id_id
    check "Confirmada" if @amistad.confirmada
    fill_in "Usuario id", with: @amistad.usuario_id_id
    click_on "Update Amistad"

    assert_text "Amistad was successfully updated"
    click_on "Back"
  end

  test "destroying a Amistad" do
    visit amistades_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Amistad was successfully destroyed"
  end
end
