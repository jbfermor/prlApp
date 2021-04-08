require "application_system_test_case"

class TrabajadorsTest < ApplicationSystemTestCase
  setup do
    @trabajador = trabajadors(:one)
  end

  test "visiting the index" do
    visit trabajadors_url
    assert_selector "h1", text: "Trabajadors"
  end

  test "creating a Trabajador" do
    visit trabajadors_url
    click_on "New Trabajador"

    fill_in "Apellidos", with: @trabajador.apellidos
    fill_in "Discapacidad", with: @trabajador.discapacidad
    fill_in "Embarazo", with: @trabajador.embarazo
    fill_in "Fecha alta", with: @trabajador.fecha_alta
    fill_in "Fecha baja", with: @trabajador.fecha_baja
    fill_in "Lactante", with: @trabajador.lactante
    fill_in "Menor", with: @trabajador.menor
    fill_in "Nombre", with: @trabajador.nombre
    fill_in "Puesto", with: @trabajador.puesto
    fill_in "Sensible", with: @trabajador.sensible
    click_on "Create Trabajador"

    assert_text "Trabajador was successfully created"
    click_on "Back"
  end

  test "updating a Trabajador" do
    visit trabajadors_url
    click_on "Edit", match: :first

    fill_in "Apellidos", with: @trabajador.apellidos
    fill_in "Discapacidad", with: @trabajador.discapacidad
    fill_in "Embarazo", with: @trabajador.embarazo
    fill_in "Fecha alta", with: @trabajador.fecha_alta
    fill_in "Fecha baja", with: @trabajador.fecha_baja
    fill_in "Lactante", with: @trabajador.lactante
    fill_in "Menor", with: @trabajador.menor
    fill_in "Nombre", with: @trabajador.nombre
    fill_in "Puesto", with: @trabajador.puesto
    fill_in "Sensible", with: @trabajador.sensible
    click_on "Update Trabajador"

    assert_text "Trabajador was successfully updated"
    click_on "Back"
  end

  test "destroying a Trabajador" do
    visit trabajadors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Trabajador was successfully destroyed"
  end
end
