require "application_system_test_case"

class CentrosTest < ApplicationSystemTestCase
  setup do
    @centro = centros(:one)
  end

  test "visiting the index" do
    visit centros_url
    assert_selector "h1", text: "Centros"
  end

  test "creating a Centro" do
    visit centros_url
    click_on "New Centro"

    fill_in "Acceso empleados", with: @centro.acceso_empleados
    fill_in "Accesso clientes", with: @centro.accesso_clientes
    fill_in "Act derecha", with: @centro.act_derecha
    fill_in "Act frontal", with: @centro.act_frontal
    fill_in "Act inferior", with: @centro.act_inferior
    fill_in "Act izquierda", with: @centro.act_izquierda
    fill_in "Act superior", with: @centro.act_superior
    fill_in "Act trasera", with: @centro.act_trasera
    fill_in "Actividad", with: @centro.actividad
    fill_in "Aforo max", with: @centro.aforo_max
    fill_in "Cp", with: @centro.cp
    fill_in "Direccion", with: @centro.direccion
    fill_in "E mant ct", with: @centro.e_mant_ct
    fill_in "Entorno", with: @centro.entorno
    fill_in "Es aacc", with: @centro.es_aacc
    fill_in "Es ascensor", with: @centro.es_ascensor
    fill_in "Es ct", with: @centro.es_ct
    fill_in "Es frio", with: @centro.es_frio
    fill_in "Es ventilacion", with: @centro.es_ventilacion
    fill_in "Inst baja tension", with: @centro.inst_baja_tension
    fill_in "Localizacion", with: @centro.localizacion
    fill_in "N ascensores", with: @centro.n_ascensores
    fill_in "N cam congelados", with: @centro.n_cam_congelados
    fill_in "N cam frio", with: @centro.n_cam_frio
    fill_in "N trabajadores", with: @centro.n_trabajadores
    fill_in "Nombre", with: @centro.nombre
    fill_in "Otras inst", with: @centro.otras_inst
    fill_in "Plantas ocupadas", with: @centro.plantas_ocupadas
    fill_in "Poblacion", with: @centro.poblacion
    fill_in "Potencia ct", with: @centro.potencia_ct
    fill_in "Provincia", with: @centro.provincia
    fill_in "Sit aacc", with: @centro.sit_aacc
    fill_in "Sit ventilacion", with: @centro.sit_ventilacion
    fill_in "Superficie", with: @centro.superficie
    fill_in "Ub caseta ext ct", with: @centro.ub_caseta_ext_ct
    fill_in "Ub compresores", with: @centro.ub_compresores
    fill_in "Ub interior ct", with: @centro.ub_interior_ct
    fill_in "Ubicacion cuadro general", with: @centro.ubicacion_cuadro_general
    click_on "Create Centro"

    assert_text "Centro was successfully created"
    click_on "Back"
  end

  test "updating a Centro" do
    visit centros_url
    click_on "Edit", match: :first

    fill_in "Acceso empleados", with: @centro.acceso_empleados
    fill_in "Accesso clientes", with: @centro.accesso_clientes
    fill_in "Act derecha", with: @centro.act_derecha
    fill_in "Act frontal", with: @centro.act_frontal
    fill_in "Act inferior", with: @centro.act_inferior
    fill_in "Act izquierda", with: @centro.act_izquierda
    fill_in "Act superior", with: @centro.act_superior
    fill_in "Act trasera", with: @centro.act_trasera
    fill_in "Actividad", with: @centro.actividad
    fill_in "Aforo max", with: @centro.aforo_max
    fill_in "Cp", with: @centro.cp
    fill_in "Direccion", with: @centro.direccion
    fill_in "E mant ct", with: @centro.e_mant_ct
    fill_in "Entorno", with: @centro.entorno
    fill_in "Es aacc", with: @centro.es_aacc
    fill_in "Es ascensor", with: @centro.es_ascensor
    fill_in "Es ct", with: @centro.es_ct
    fill_in "Es frio", with: @centro.es_frio
    fill_in "Es ventilacion", with: @centro.es_ventilacion
    fill_in "Inst baja tension", with: @centro.inst_baja_tension
    fill_in "Localizacion", with: @centro.localizacion
    fill_in "N ascensores", with: @centro.n_ascensores
    fill_in "N cam congelados", with: @centro.n_cam_congelados
    fill_in "N cam frio", with: @centro.n_cam_frio
    fill_in "N trabajadores", with: @centro.n_trabajadores
    fill_in "Nombre", with: @centro.nombre
    fill_in "Otras inst", with: @centro.otras_inst
    fill_in "Plantas ocupadas", with: @centro.plantas_ocupadas
    fill_in "Poblacion", with: @centro.poblacion
    fill_in "Potencia ct", with: @centro.potencia_ct
    fill_in "Provincia", with: @centro.provincia
    fill_in "Sit aacc", with: @centro.sit_aacc
    fill_in "Sit ventilacion", with: @centro.sit_ventilacion
    fill_in "Superficie", with: @centro.superficie
    fill_in "Ub caseta ext ct", with: @centro.ub_caseta_ext_ct
    fill_in "Ub compresores", with: @centro.ub_compresores
    fill_in "Ub interior ct", with: @centro.ub_interior_ct
    fill_in "Ubicacion cuadro general", with: @centro.ubicacion_cuadro_general
    click_on "Update Centro"

    assert_text "Centro was successfully updated"
    click_on "Back"
  end

  test "destroying a Centro" do
    visit centros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Centro was successfully destroyed"
  end
end
