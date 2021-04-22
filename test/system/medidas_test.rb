require "application_system_test_case"

class MedidasTest < ApplicationSystemTestCase
  setup do
    @medida = medidas(:one)
  end

  test "visiting the index" do
    visit medidas_url
    assert_selector "h1", text: "Medidas"
  end

  test "creating a Medida" do
    visit medidas_url
    click_on "New Medida"

    fill_in "Empresa", with: @medida.empresa
    fill_in "M1", with: @medida.m1
    fill_in "M10", with: @medida.m10
    fill_in "M11", with: @medida.m11
    fill_in "M12", with: @medida.m12
    fill_in "M13", with: @medida.m13
    fill_in "M14", with: @medida.m14
    fill_in "M15", with: @medida.m15
    fill_in "M16", with: @medida.m16
    fill_in "M17", with: @medida.m17
    fill_in "M18", with: @medida.m18
    fill_in "M19", with: @medida.m19
    fill_in "M2", with: @medida.m2
    fill_in "M20", with: @medida.m20
    fill_in "M21", with: @medida.m21
    fill_in "M22", with: @medida.m22
    fill_in "M23", with: @medida.m23
    fill_in "M24", with: @medida.m24
    fill_in "M25", with: @medida.m25
    fill_in "M26", with: @medida.m26
    fill_in "M27", with: @medida.m27
    fill_in "M28", with: @medida.m28
    fill_in "M29", with: @medida.m29
    fill_in "M3", with: @medida.m3
    fill_in "M30", with: @medida.m30
    fill_in "M31", with: @medida.m31
    fill_in "M32", with: @medida.m32
    fill_in "M33", with: @medida.m33
    fill_in "M34", with: @medida.m34
    fill_in "M35", with: @medida.m35
    fill_in "M36", with: @medida.m36
    fill_in "M37", with: @medida.m37
    fill_in "M38", with: @medida.m38
    fill_in "M39", with: @medida.m39
    fill_in "M4", with: @medida.m4
    fill_in "M40", with: @medida.m40
    fill_in "M41", with: @medida.m41
    fill_in "M42", with: @medida.m42
    fill_in "M43", with: @medida.m43
    fill_in "M44", with: @medida.m44
    fill_in "M45", with: @medida.m45
    fill_in "M46", with: @medida.m46
    fill_in "M5", with: @medida.m5
    fill_in "M6", with: @medida.m6
    fill_in "M7", with: @medida.m7
    fill_in "M8", with: @medida.m8
    fill_in "M9", with: @medida.m9
    click_on "Create Medida"

    assert_text "Medida was successfully created"
    click_on "Back"
  end

  test "updating a Medida" do
    visit medidas_url
    click_on "Edit", match: :first

    fill_in "Empresa", with: @medida.empresa
    fill_in "M1", with: @medida.m1
    fill_in "M10", with: @medida.m10
    fill_in "M11", with: @medida.m11
    fill_in "M12", with: @medida.m12
    fill_in "M13", with: @medida.m13
    fill_in "M14", with: @medida.m14
    fill_in "M15", with: @medida.m15
    fill_in "M16", with: @medida.m16
    fill_in "M17", with: @medida.m17
    fill_in "M18", with: @medida.m18
    fill_in "M19", with: @medida.m19
    fill_in "M2", with: @medida.m2
    fill_in "M20", with: @medida.m20
    fill_in "M21", with: @medida.m21
    fill_in "M22", with: @medida.m22
    fill_in "M23", with: @medida.m23
    fill_in "M24", with: @medida.m24
    fill_in "M25", with: @medida.m25
    fill_in "M26", with: @medida.m26
    fill_in "M27", with: @medida.m27
    fill_in "M28", with: @medida.m28
    fill_in "M29", with: @medida.m29
    fill_in "M3", with: @medida.m3
    fill_in "M30", with: @medida.m30
    fill_in "M31", with: @medida.m31
    fill_in "M32", with: @medida.m32
    fill_in "M33", with: @medida.m33
    fill_in "M34", with: @medida.m34
    fill_in "M35", with: @medida.m35
    fill_in "M36", with: @medida.m36
    fill_in "M37", with: @medida.m37
    fill_in "M38", with: @medida.m38
    fill_in "M39", with: @medida.m39
    fill_in "M4", with: @medida.m4
    fill_in "M40", with: @medida.m40
    fill_in "M41", with: @medida.m41
    fill_in "M42", with: @medida.m42
    fill_in "M43", with: @medida.m43
    fill_in "M44", with: @medida.m44
    fill_in "M45", with: @medida.m45
    fill_in "M46", with: @medida.m46
    fill_in "M5", with: @medida.m5
    fill_in "M6", with: @medida.m6
    fill_in "M7", with: @medida.m7
    fill_in "M8", with: @medida.m8
    fill_in "M9", with: @medida.m9
    click_on "Update Medida"

    assert_text "Medida was successfully updated"
    click_on "Back"
  end

  test "destroying a Medida" do
    visit medidas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Medida was successfully destroyed"
  end
end
