require "application_system_test_case"

class PresupuestosTest < ApplicationSystemTestCase
  setup do
    @presupuesto = presupuestos(:one)
  end

  test "visiting the index" do
    visit presupuestos_url
    assert_selector "h1", text: "Presupuestos"
  end

  test "creating a Presupuesto" do
    visit presupuestos_url
    click_on "New Presupuesto"

    fill_in "Empresa", with: @presupuesto.empresa_id
    fill_in "Pr", with: @presupuesto.pr
    fill_in "Pr1", with: @presupuesto.pr1
    fill_in "Pr10", with: @presupuesto.pr10
    fill_in "Pr11", with: @presupuesto.pr11
    fill_in "Pr12", with: @presupuesto.pr12
    fill_in "Pr13", with: @presupuesto.pr13
    fill_in "Pr14", with: @presupuesto.pr14
    fill_in "Pr15", with: @presupuesto.pr15
    fill_in "Pr16", with: @presupuesto.pr16
    fill_in "Pr17", with: @presupuesto.pr17
    fill_in "Pr2", with: @presupuesto.pr2
    fill_in "Pr4", with: @presupuesto.pr4
    fill_in "Pr5", with: @presupuesto.pr5
    fill_in "Pr6", with: @presupuesto.pr6
    fill_in "Pr7", with: @presupuesto.pr7
    fill_in "Pr8", with: @presupuesto.pr8
    fill_in "Pr9", with: @presupuesto.pr9
    click_on "Create Presupuesto"

    assert_text "Presupuesto was successfully created"
    click_on "Back"
  end

  test "updating a Presupuesto" do
    visit presupuestos_url
    click_on "Edit", match: :first

    fill_in "Empresa", with: @presupuesto.empresa_id
    fill_in "Pr", with: @presupuesto.pr
    fill_in "Pr1", with: @presupuesto.pr1
    fill_in "Pr10", with: @presupuesto.pr10
    fill_in "Pr11", with: @presupuesto.pr11
    fill_in "Pr12", with: @presupuesto.pr12
    fill_in "Pr13", with: @presupuesto.pr13
    fill_in "Pr14", with: @presupuesto.pr14
    fill_in "Pr15", with: @presupuesto.pr15
    fill_in "Pr16", with: @presupuesto.pr16
    fill_in "Pr17", with: @presupuesto.pr17
    fill_in "Pr2", with: @presupuesto.pr2
    fill_in "Pr4", with: @presupuesto.pr4
    fill_in "Pr5", with: @presupuesto.pr5
    fill_in "Pr6", with: @presupuesto.pr6
    fill_in "Pr7", with: @presupuesto.pr7
    fill_in "Pr8", with: @presupuesto.pr8
    fill_in "Pr9", with: @presupuesto.pr9
    click_on "Update Presupuesto"

    assert_text "Presupuesto was successfully updated"
    click_on "Back"
  end

  test "destroying a Presupuesto" do
    visit presupuestos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Presupuesto was successfully destroyed"
  end
end
