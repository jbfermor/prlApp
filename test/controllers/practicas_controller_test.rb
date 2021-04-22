require "test_helper"

class PracticasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @practica = practicas(:one)
  end

  test "should get index" do
    get practicas_url
    assert_response :success
  end

  test "should get new" do
    get new_practica_url
    assert_response :success
  end

  test "should create practica" do
    assert_difference('Practica.count') do
      post practicas_url, params: { practica: { empresa: @practica.empresa, p1: @practica.p1, p10: @practica.p10, p11: @practica.p11, p12: @practica.p12, p13: @practica.p13, p14: @practica.p14, p15: @practica.p15, p16: @practica.p16, p17: @practica.p17, p18: @practica.p18, p19: @practica.p19, p2: @practica.p2, p20: @practica.p20, p21: @practica.p21, p22: @practica.p22, p23: @practica.p23, p24: @practica.p24, p25: @practica.p25, p26: @practica.p26, p27: @practica.p27, p28: @practica.p28, p29: @practica.p29, p3: @practica.p3, p30: @practica.p30, p31: @practica.p31, p32: @practica.p32, p33: @practica.p33, p34: @practica.p34, p35: @practica.p35, p36: @practica.p36, p37: @practica.p37, p38: @practica.p38, p39: @practica.p39, p4: @practica.p4, p40: @practica.p40, p41: @practica.p41, p42: @practica.p42, p5: @practica.p5, p6: @practica.p6, p7: @practica.p7, p8: @practica.p8, p9: @practica.p9 } }
    end

    assert_redirected_to practica_url(Practica.last)
  end

  test "should show practica" do
    get practica_url(@practica)
    assert_response :success
  end

  test "should get edit" do
    get edit_practica_url(@practica)
    assert_response :success
  end

  test "should update practica" do
    patch practica_url(@practica), params: { practica: { empresa: @practica.empresa, p1: @practica.p1, p10: @practica.p10, p11: @practica.p11, p12: @practica.p12, p13: @practica.p13, p14: @practica.p14, p15: @practica.p15, p16: @practica.p16, p17: @practica.p17, p18: @practica.p18, p19: @practica.p19, p2: @practica.p2, p20: @practica.p20, p21: @practica.p21, p22: @practica.p22, p23: @practica.p23, p24: @practica.p24, p25: @practica.p25, p26: @practica.p26, p27: @practica.p27, p28: @practica.p28, p29: @practica.p29, p3: @practica.p3, p30: @practica.p30, p31: @practica.p31, p32: @practica.p32, p33: @practica.p33, p34: @practica.p34, p35: @practica.p35, p36: @practica.p36, p37: @practica.p37, p38: @practica.p38, p39: @practica.p39, p4: @practica.p4, p40: @practica.p40, p41: @practica.p41, p42: @practica.p42, p5: @practica.p5, p6: @practica.p6, p7: @practica.p7, p8: @practica.p8, p9: @practica.p9 } }
    assert_redirected_to practica_url(@practica)
  end

  test "should destroy practica" do
    assert_difference('Practica.count', -1) do
      delete practica_url(@practica)
    end

    assert_redirected_to practicas_url
  end
end
