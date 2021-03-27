require "application_system_test_case"

class EmpresasTest < ApplicationSystemTestCase
  setup do
    @empresa = empresas(:one)
  end

  test "visiting the index" do
    visit empresas_url
    assert_selector "h1", text: "Empresas"
  end

  test "creating a Empresa" do
    visit empresas_url
    click_on "New Empresa"

    fill_in "Cif", with: @empresa.cif
    fill_in "Cp", with: @empresa.cp
    fill_in "Direccion", with: @empresa.direccion
    fill_in "Email", with: @empresa.email
    fill_in "Poblacion", with: @empresa.poblacion
    fill_in "Provincia", with: @empresa.provincia
    fill_in "Razon social", with: @empresa.razon_social
    fill_in "T fuera", with: @empresa.t_fuera
    fill_in "Telefono", with: @empresa.telefono
    click_on "Create Empresa"

    assert_text "Empresa was successfully created"
    click_on "Back"
  end

  test "updating a Empresa" do
    visit empresas_url
    click_on "Edit", match: :first

    fill_in "Cif", with: @empresa.cif
    fill_in "Cp", with: @empresa.cp
    fill_in "Direccion", with: @empresa.direccion
    fill_in "Email", with: @empresa.email
    fill_in "Poblacion", with: @empresa.poblacion
    fill_in "Provincia", with: @empresa.provincia
    fill_in "Razon social", with: @empresa.razon_social
    fill_in "T fuera", with: @empresa.t_fuera
    fill_in "Telefono", with: @empresa.telefono
    click_on "Update Empresa"

    assert_text "Empresa was successfully updated"
    click_on "Back"
  end

  test "destroying a Empresa" do
    visit empresas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Empresa was successfully destroyed"
  end
end
