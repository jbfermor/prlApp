require "application_system_test_case"

class ResponsablesTest < ApplicationSystemTestCase
  setup do
    @responsable = responsables(:one)
  end

  test "visiting the index" do
    visit responsables_url
    assert_selector "h1", text: "Responsables"
  end

  test "creating a Responsable" do
    visit responsables_url
    click_on "New Responsable"

    fill_in "Apellidos", with: @responsable.apellidos
    fill_in "Belongs to", with: @responsable.belongs_to
    fill_in "Cargo", with: @responsable.cargo
    fill_in "Nif", with: @responsable.nif
    fill_in "Nombre", with: @responsable.nombre
    click_on "Create Responsable"

    assert_text "Responsable was successfully created"
    click_on "Back"
  end

  test "updating a Responsable" do
    visit responsables_url
    click_on "Edit", match: :first

    fill_in "Apellidos", with: @responsable.apellidos
    fill_in "Belongs to", with: @responsable.belongs_to
    fill_in "Cargo", with: @responsable.cargo
    fill_in "Nif", with: @responsable.nif
    fill_in "Nombre", with: @responsable.nombre
    click_on "Update Responsable"

    assert_text "Responsable was successfully updated"
    click_on "Back"
  end

  test "destroying a Responsable" do
    visit responsables_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Responsable was successfully destroyed"
  end
end
