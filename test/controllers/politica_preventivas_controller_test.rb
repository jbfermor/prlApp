require "test_helper"

class PoliticaPreventivasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @politica_preventiva = politica_preventivas(:one)
  end

  test "should get index" do
    get politica_preventivas_url
    assert_response :success
  end

  test "should get new" do
    get new_politica_preventiva_url
    assert_response :success
  end

  test "should create politica_preventiva" do
    assert_difference('PoliticaPreventiva.count') do
      post politica_preventivas_url, params: { politica_preventiva: { pp1: @politica_preventiva.pp1, pp10: @politica_preventiva.pp10, pp11: @politica_preventiva.pp11, pp12: @politica_preventiva.pp12, pp2: @politica_preventiva.pp2, pp3: @politica_preventiva.pp3, pp4: @politica_preventiva.pp4, pp5: @politica_preventiva.pp5, pp6: @politica_preventiva.pp6, pp7: @politica_preventiva.pp7, pp8: @politica_preventiva.pp8, pp9: @politica_preventiva.pp9 } }
    end

    assert_redirected_to politica_preventiva_url(PoliticaPreventiva.last)
  end

  test "should show politica_preventiva" do
    get politica_preventiva_url(@politica_preventiva)
    assert_response :success
  end

  test "should get edit" do
    get edit_politica_preventiva_url(@politica_preventiva)
    assert_response :success
  end

  test "should update politica_preventiva" do
    patch politica_preventiva_url(@politica_preventiva), params: { politica_preventiva: { pp1: @politica_preventiva.pp1, pp10: @politica_preventiva.pp10, pp11: @politica_preventiva.pp11, pp12: @politica_preventiva.pp12, pp2: @politica_preventiva.pp2, pp3: @politica_preventiva.pp3, pp4: @politica_preventiva.pp4, pp5: @politica_preventiva.pp5, pp6: @politica_preventiva.pp6, pp7: @politica_preventiva.pp7, pp8: @politica_preventiva.pp8, pp9: @politica_preventiva.pp9 } }
    assert_redirected_to politica_preventiva_url(@politica_preventiva)
  end

  test "should destroy politica_preventiva" do
    assert_difference('PoliticaPreventiva.count', -1) do
      delete politica_preventiva_url(@politica_preventiva)
    end

    assert_redirected_to politica_preventivas_url
  end
end
