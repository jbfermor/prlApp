require "test_helper"

class CentrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @centro = centros(:one)
  end

  test "should get index" do
    get centros_url
    assert_response :success
  end

  test "should get new" do
    get new_centro_url
    assert_response :success
  end

  test "should create centro" do
    assert_difference('Centro.count') do
      post centros_url, params: { centro: { acceso_empleados: @centro.acceso_empleados, accesso_clientes: @centro.accesso_clientes, act_derecha: @centro.act_derecha, act_frontal: @centro.act_frontal, act_inferior: @centro.act_inferior, act_izquierda: @centro.act_izquierda, act_superior: @centro.act_superior, act_trasera: @centro.act_trasera, actividad: @centro.actividad, aforo_max: @centro.aforo_max, cp: @centro.cp, direccion: @centro.direccion, e_mant_ct: @centro.e_mant_ct, entorno: @centro.entorno, es_aacc: @centro.es_aacc, es_ascensor: @centro.es_ascensor, es_ct: @centro.es_ct, es_frio: @centro.es_frio, es_ventilacion: @centro.es_ventilacion, inst_baja_tension: @centro.inst_baja_tension, localizacion: @centro.localizacion, n_ascensores: @centro.n_ascensores, n_cam_congelados: @centro.n_cam_congelados, n_cam_frio: @centro.n_cam_frio, n_trabajadores: @centro.n_trabajadores, nombre: @centro.nombre, otras_inst: @centro.otras_inst, plantas_ocupadas: @centro.plantas_ocupadas, poblacion: @centro.poblacion, potencia_ct: @centro.potencia_ct, provincia: @centro.provincia, sit_aacc: @centro.sit_aacc, sit_ventilacion: @centro.sit_ventilacion, superficie: @centro.superficie, ub_caseta_ext_ct: @centro.ub_caseta_ext_ct, ub_compresores: @centro.ub_compresores, ub_interior_ct: @centro.ub_interior_ct, ubicacion_cuadro_general: @centro.ubicacion_cuadro_general } }
    end

    assert_redirected_to centro_url(Centro.last)
  end

  test "should show centro" do
    get centro_url(@centro)
    assert_response :success
  end

  test "should get edit" do
    get edit_centro_url(@centro)
    assert_response :success
  end

  test "should update centro" do
    patch centro_url(@centro), params: { centro: { acceso_empleados: @centro.acceso_empleados, accesso_clientes: @centro.accesso_clientes, act_derecha: @centro.act_derecha, act_frontal: @centro.act_frontal, act_inferior: @centro.act_inferior, act_izquierda: @centro.act_izquierda, act_superior: @centro.act_superior, act_trasera: @centro.act_trasera, actividad: @centro.actividad, aforo_max: @centro.aforo_max, cp: @centro.cp, direccion: @centro.direccion, e_mant_ct: @centro.e_mant_ct, entorno: @centro.entorno, es_aacc: @centro.es_aacc, es_ascensor: @centro.es_ascensor, es_ct: @centro.es_ct, es_frio: @centro.es_frio, es_ventilacion: @centro.es_ventilacion, inst_baja_tension: @centro.inst_baja_tension, localizacion: @centro.localizacion, n_ascensores: @centro.n_ascensores, n_cam_congelados: @centro.n_cam_congelados, n_cam_frio: @centro.n_cam_frio, n_trabajadores: @centro.n_trabajadores, nombre: @centro.nombre, otras_inst: @centro.otras_inst, plantas_ocupadas: @centro.plantas_ocupadas, poblacion: @centro.poblacion, potencia_ct: @centro.potencia_ct, provincia: @centro.provincia, sit_aacc: @centro.sit_aacc, sit_ventilacion: @centro.sit_ventilacion, superficie: @centro.superficie, ub_caseta_ext_ct: @centro.ub_caseta_ext_ct, ub_compresores: @centro.ub_compresores, ub_interior_ct: @centro.ub_interior_ct, ubicacion_cuadro_general: @centro.ubicacion_cuadro_general } }
    assert_redirected_to centro_url(@centro)
  end

  test "should destroy centro" do
    assert_difference('Centro.count', -1) do
      delete centro_url(@centro)
    end

    assert_redirected_to centros_url
  end
end
