require "test_helper"

class MedidasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @medida = medidas(:one)
  end

  test "should get index" do
    get medidas_url
    assert_response :success
  end

  test "should get new" do
    get new_medida_url
    assert_response :success
  end

  test "should create medida" do
    assert_difference('Medida.count') do
      post medidas_url, params: { medida: { empresa: @medida.empresa, m1: @medida.m1, m10: @medida.m10, m11: @medida.m11, m12: @medida.m12, m13: @medida.m13, m14: @medida.m14, m15: @medida.m15, m16: @medida.m16, m17: @medida.m17, m18: @medida.m18, m19: @medida.m19, m2: @medida.m2, m20: @medida.m20, m21: @medida.m21, m22: @medida.m22, m23: @medida.m23, m24: @medida.m24, m25: @medida.m25, m26: @medida.m26, m27: @medida.m27, m28: @medida.m28, m29: @medida.m29, m3: @medida.m3, m30: @medida.m30, m31: @medida.m31, m32: @medida.m32, m33: @medida.m33, m34: @medida.m34, m35: @medida.m35, m36: @medida.m36, m37: @medida.m37, m38: @medida.m38, m39: @medida.m39, m4: @medida.m4, m40: @medida.m40, m41: @medida.m41, m42: @medida.m42, m43: @medida.m43, m44: @medida.m44, m45: @medida.m45, m46: @medida.m46, m5: @medida.m5, m6: @medida.m6, m7: @medida.m7, m8: @medida.m8, m9: @medida.m9 } }
    end

    assert_redirected_to medida_url(Medida.last)
  end

  test "should show medida" do
    get medida_url(@medida)
    assert_response :success
  end

  test "should get edit" do
    get edit_medida_url(@medida)
    assert_response :success
  end

  test "should update medida" do
    patch medida_url(@medida), params: { medida: { empresa: @medida.empresa, m1: @medida.m1, m10: @medida.m10, m11: @medida.m11, m12: @medida.m12, m13: @medida.m13, m14: @medida.m14, m15: @medida.m15, m16: @medida.m16, m17: @medida.m17, m18: @medida.m18, m19: @medida.m19, m2: @medida.m2, m20: @medida.m20, m21: @medida.m21, m22: @medida.m22, m23: @medida.m23, m24: @medida.m24, m25: @medida.m25, m26: @medida.m26, m27: @medida.m27, m28: @medida.m28, m29: @medida.m29, m3: @medida.m3, m30: @medida.m30, m31: @medida.m31, m32: @medida.m32, m33: @medida.m33, m34: @medida.m34, m35: @medida.m35, m36: @medida.m36, m37: @medida.m37, m38: @medida.m38, m39: @medida.m39, m4: @medida.m4, m40: @medida.m40, m41: @medida.m41, m42: @medida.m42, m43: @medida.m43, m44: @medida.m44, m45: @medida.m45, m46: @medida.m46, m5: @medida.m5, m6: @medida.m6, m7: @medida.m7, m8: @medida.m8, m9: @medida.m9 } }
    assert_redirected_to medida_url(@medida)
  end

  test "should destroy medida" do
    assert_difference('Medida.count', -1) do
      delete medida_url(@medida)
    end

    assert_redirected_to medidas_url
  end
end
