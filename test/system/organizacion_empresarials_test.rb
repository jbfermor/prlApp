require "application_system_test_case"

class OrganizacionEmpresarialsTest < ApplicationSystemTestCase
  setup do
    @organizacion_empresarial = organizacion_empresarials(:one)
  end

  test "visiting the index" do
    visit organizacion_empresarials_url
    assert_selector "h1", text: "Organizacion Empresarials"
  end

  test "creating a Organizacion empresarial" do
    visit organizacion_empresarials_url
    click_on "New Organizacion Empresarial"

    fill_in "D", with: @organizacion_empresarial.d
    fill_in "Dp", with: @organizacion_empresarial.dp
    fill_in "Empresa", with: @organizacion_empresarial.empresa_id
    fill_in "Mi", with: @organizacion_empresarial.mi
    fill_in "T", with: @organizacion_empresarial.t
    click_on "Create Organizacion empresarial"

    assert_text "Organizacion empresarial was successfully created"
    click_on "Back"
  end

  test "updating a Organizacion empresarial" do
    visit organizacion_empresarials_url
    click_on "Edit", match: :first

    fill_in "D", with: @organizacion_empresarial.d
    fill_in "Dp", with: @organizacion_empresarial.dp
    fill_in "Empresa", with: @organizacion_empresarial.empresa_id
    fill_in "Mi", with: @organizacion_empresarial.mi
    fill_in "T", with: @organizacion_empresarial.t
    click_on "Update Organizacion empresarial"

    assert_text "Organizacion empresarial was successfully updated"
    click_on "Back"
  end

  test "destroying a Organizacion empresarial" do
    visit organizacion_empresarials_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Organizacion empresarial was successfully destroyed"
  end
end
