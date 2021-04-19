require "application_system_test_case"

class PoliticaPreventivasTest < ApplicationSystemTestCase
  setup do
    @politica_preventiva = politica_preventivas(:one)
  end

  test "visiting the index" do
    visit politica_preventivas_url
    assert_selector "h1", text: "Politica Preventivas"
  end

  test "creating a Politica preventiva" do
    visit politica_preventivas_url
    click_on "New Politica Preventiva"

    fill_in "Pp1", with: @politica_preventiva.pp1
    fill_in "Pp10", with: @politica_preventiva.pp10
    fill_in "Pp11", with: @politica_preventiva.pp11
    fill_in "Pp12", with: @politica_preventiva.pp12
    fill_in "Pp2", with: @politica_preventiva.pp2
    fill_in "Pp3", with: @politica_preventiva.pp3
    fill_in "Pp4", with: @politica_preventiva.pp4
    fill_in "Pp5", with: @politica_preventiva.pp5
    fill_in "Pp6", with: @politica_preventiva.pp6
    fill_in "Pp7", with: @politica_preventiva.pp7
    fill_in "Pp8", with: @politica_preventiva.pp8
    fill_in "Pp9", with: @politica_preventiva.pp9
    click_on "Create Politica preventiva"

    assert_text "Politica preventiva was successfully created"
    click_on "Back"
  end

  test "updating a Politica preventiva" do
    visit politica_preventivas_url
    click_on "Edit", match: :first

    fill_in "Pp1", with: @politica_preventiva.pp1
    fill_in "Pp10", with: @politica_preventiva.pp10
    fill_in "Pp11", with: @politica_preventiva.pp11
    fill_in "Pp12", with: @politica_preventiva.pp12
    fill_in "Pp2", with: @politica_preventiva.pp2
    fill_in "Pp3", with: @politica_preventiva.pp3
    fill_in "Pp4", with: @politica_preventiva.pp4
    fill_in "Pp5", with: @politica_preventiva.pp5
    fill_in "Pp6", with: @politica_preventiva.pp6
    fill_in "Pp7", with: @politica_preventiva.pp7
    fill_in "Pp8", with: @politica_preventiva.pp8
    fill_in "Pp9", with: @politica_preventiva.pp9
    click_on "Update Politica preventiva"

    assert_text "Politica preventiva was successfully updated"
    click_on "Back"
  end

  test "destroying a Politica preventiva" do
    visit politica_preventivas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Politica preventiva was successfully destroyed"
  end
end
