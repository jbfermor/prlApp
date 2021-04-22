require "application_system_test_case"

class PracticasTest < ApplicationSystemTestCase
  setup do
    @practica = practicas(:one)
  end

  test "visiting the index" do
    visit practicas_url
    assert_selector "h1", text: "Practicas"
  end

  test "creating a Practica" do
    visit practicas_url
    click_on "New Practica"

    fill_in "Empresa", with: @practica.empresa
    fill_in "P1", with: @practica.p1
    fill_in "P10", with: @practica.p10
    fill_in "P11", with: @practica.p11
    fill_in "P12", with: @practica.p12
    fill_in "P13", with: @practica.p13
    fill_in "P14", with: @practica.p14
    fill_in "P15", with: @practica.p15
    fill_in "P16", with: @practica.p16
    fill_in "P17", with: @practica.p17
    fill_in "P18", with: @practica.p18
    fill_in "P19", with: @practica.p19
    fill_in "P2", with: @practica.p2
    fill_in "P20", with: @practica.p20
    fill_in "P21", with: @practica.p21
    fill_in "P22", with: @practica.p22
    fill_in "P23", with: @practica.p23
    fill_in "P24", with: @practica.p24
    fill_in "P25", with: @practica.p25
    fill_in "P26", with: @practica.p26
    fill_in "P27", with: @practica.p27
    fill_in "P28", with: @practica.p28
    fill_in "P29", with: @practica.p29
    fill_in "P3", with: @practica.p3
    fill_in "P30", with: @practica.p30
    fill_in "P31", with: @practica.p31
    fill_in "P32", with: @practica.p32
    fill_in "P33", with: @practica.p33
    fill_in "P34", with: @practica.p34
    fill_in "P35", with: @practica.p35
    fill_in "P36", with: @practica.p36
    fill_in "P37", with: @practica.p37
    fill_in "P38", with: @practica.p38
    fill_in "P39", with: @practica.p39
    fill_in "P4", with: @practica.p4
    fill_in "P40", with: @practica.p40
    fill_in "P41", with: @practica.p41
    fill_in "P42", with: @practica.p42
    fill_in "P5", with: @practica.p5
    fill_in "P6", with: @practica.p6
    fill_in "P7", with: @practica.p7
    fill_in "P8", with: @practica.p8
    fill_in "P9", with: @practica.p9
    click_on "Create Practica"

    assert_text "Practica was successfully created"
    click_on "Back"
  end

  test "updating a Practica" do
    visit practicas_url
    click_on "Edit", match: :first

    fill_in "Empresa", with: @practica.empresa
    fill_in "P1", with: @practica.p1
    fill_in "P10", with: @practica.p10
    fill_in "P11", with: @practica.p11
    fill_in "P12", with: @practica.p12
    fill_in "P13", with: @practica.p13
    fill_in "P14", with: @practica.p14
    fill_in "P15", with: @practica.p15
    fill_in "P16", with: @practica.p16
    fill_in "P17", with: @practica.p17
    fill_in "P18", with: @practica.p18
    fill_in "P19", with: @practica.p19
    fill_in "P2", with: @practica.p2
    fill_in "P20", with: @practica.p20
    fill_in "P21", with: @practica.p21
    fill_in "P22", with: @practica.p22
    fill_in "P23", with: @practica.p23
    fill_in "P24", with: @practica.p24
    fill_in "P25", with: @practica.p25
    fill_in "P26", with: @practica.p26
    fill_in "P27", with: @practica.p27
    fill_in "P28", with: @practica.p28
    fill_in "P29", with: @practica.p29
    fill_in "P3", with: @practica.p3
    fill_in "P30", with: @practica.p30
    fill_in "P31", with: @practica.p31
    fill_in "P32", with: @practica.p32
    fill_in "P33", with: @practica.p33
    fill_in "P34", with: @practica.p34
    fill_in "P35", with: @practica.p35
    fill_in "P36", with: @practica.p36
    fill_in "P37", with: @practica.p37
    fill_in "P38", with: @practica.p38
    fill_in "P39", with: @practica.p39
    fill_in "P4", with: @practica.p4
    fill_in "P40", with: @practica.p40
    fill_in "P41", with: @practica.p41
    fill_in "P42", with: @practica.p42
    fill_in "P5", with: @practica.p5
    fill_in "P6", with: @practica.p6
    fill_in "P7", with: @practica.p7
    fill_in "P8", with: @practica.p8
    fill_in "P9", with: @practica.p9
    click_on "Update Practica"

    assert_text "Practica was successfully updated"
    click_on "Back"
  end

  test "destroying a Practica" do
    visit practicas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Practica was successfully destroyed"
  end
end
