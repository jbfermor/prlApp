require "application_system_test_case"

class InformesTest < ApplicationSystemTestCase
  setup do
    @informe = informes(:one)
  end

  test "visiting the index" do
    visit informes_url
    assert_selector "h1", text: "Informes"
  end

  test "creating a Informe" do
    visit informes_url
    click_on "New Informe"

    fill_in "Ciudadfirma", with: @informe.ciudadFirma
    fill_in "Empresa", with: @informe.empresa_id
    fill_in "Fechafirma", with: @informe.fechaFirma
    fill_in "Tipo", with: @informe.tipo
    click_on "Create Informe"

    assert_text "Informe was successfully created"
    click_on "Back"
  end

  test "updating a Informe" do
    visit informes_url
    click_on "Edit", match: :first

    fill_in "Ciudadfirma", with: @informe.ciudadFirma
    fill_in "Empresa", with: @informe.empresa_id
    fill_in "Fechafirma", with: @informe.fechaFirma
    fill_in "Tipo", with: @informe.tipo
    click_on "Update Informe"

    assert_text "Informe was successfully updated"
    click_on "Back"
  end

  test "destroying a Informe" do
    visit informes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Informe was successfully destroyed"
  end
end
