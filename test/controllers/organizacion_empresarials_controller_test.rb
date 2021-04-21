require "test_helper"

class OrganizacionEmpresarialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @organizacion_empresarial = organizacion_empresarials(:one)
  end

  test "should get index" do
    get organizacion_empresarials_url
    assert_response :success
  end

  test "should get new" do
    get new_organizacion_empresarial_url
    assert_response :success
  end

  test "should create organizacion_empresarial" do
    assert_difference('OrganizacionEmpresarial.count') do
      post organizacion_empresarials_url, params: { organizacion_empresarial: { d: @organizacion_empresarial.d, dp: @organizacion_empresarial.dp, empresa_id: @organizacion_empresarial.empresa_id, mi: @organizacion_empresarial.mi, t: @organizacion_empresarial.t } }
    end

    assert_redirected_to organizacion_empresarial_url(OrganizacionEmpresarial.last)
  end

  test "should show organizacion_empresarial" do
    get organizacion_empresarial_url(@organizacion_empresarial)
    assert_response :success
  end

  test "should get edit" do
    get edit_organizacion_empresarial_url(@organizacion_empresarial)
    assert_response :success
  end

  test "should update organizacion_empresarial" do
    patch organizacion_empresarial_url(@organizacion_empresarial), params: { organizacion_empresarial: { d: @organizacion_empresarial.d, dp: @organizacion_empresarial.dp, empresa_id: @organizacion_empresarial.empresa_id, mi: @organizacion_empresarial.mi, t: @organizacion_empresarial.t } }
    assert_redirected_to organizacion_empresarial_url(@organizacion_empresarial)
  end

  test "should destroy organizacion_empresarial" do
    assert_difference('OrganizacionEmpresarial.count', -1) do
      delete organizacion_empresarial_url(@organizacion_empresarial)
    end

    assert_redirected_to organizacion_empresarials_url
  end
end
