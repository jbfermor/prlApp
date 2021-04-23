require "test_helper"

class PresupuestosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @presupuesto = presupuestos(:one)
  end

  test "should get index" do
    get presupuestos_url
    assert_response :success
  end

  test "should get new" do
    get new_presupuesto_url
    assert_response :success
  end

  test "should create presupuesto" do
    assert_difference('Presupuesto.count') do
      post presupuestos_url, params: { presupuesto: { empresa_id: @presupuesto.empresa_id, pr: @presupuesto.pr, pr1: @presupuesto.pr1, pr10: @presupuesto.pr10, pr11: @presupuesto.pr11, pr12: @presupuesto.pr12, pr13: @presupuesto.pr13, pr14: @presupuesto.pr14, pr15: @presupuesto.pr15, pr16: @presupuesto.pr16, pr17: @presupuesto.pr17, pr2: @presupuesto.pr2, pr4: @presupuesto.pr4, pr5: @presupuesto.pr5, pr6: @presupuesto.pr6, pr7: @presupuesto.pr7, pr8: @presupuesto.pr8, pr9: @presupuesto.pr9 } }
    end

    assert_redirected_to presupuesto_url(Presupuesto.last)
  end

  test "should show presupuesto" do
    get presupuesto_url(@presupuesto)
    assert_response :success
  end

  test "should get edit" do
    get edit_presupuesto_url(@presupuesto)
    assert_response :success
  end

  test "should update presupuesto" do
    patch presupuesto_url(@presupuesto), params: { presupuesto: { empresa_id: @presupuesto.empresa_id, pr: @presupuesto.pr, pr1: @presupuesto.pr1, pr10: @presupuesto.pr10, pr11: @presupuesto.pr11, pr12: @presupuesto.pr12, pr13: @presupuesto.pr13, pr14: @presupuesto.pr14, pr15: @presupuesto.pr15, pr16: @presupuesto.pr16, pr17: @presupuesto.pr17, pr2: @presupuesto.pr2, pr4: @presupuesto.pr4, pr5: @presupuesto.pr5, pr6: @presupuesto.pr6, pr7: @presupuesto.pr7, pr8: @presupuesto.pr8, pr9: @presupuesto.pr9 } }
    assert_redirected_to presupuesto_url(@presupuesto)
  end

  test "should destroy presupuesto" do
    assert_difference('Presupuesto.count', -1) do
      delete presupuesto_url(@presupuesto)
    end

    assert_redirected_to presupuestos_url
  end
end
