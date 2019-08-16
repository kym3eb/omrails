require "application_system_test_case"

class GarmentsTest < ApplicationSystemTestCase
  setup do
    @garment = garments(:one)
  end

  test "visiting the index" do
    visit garments_url
    assert_selector "h1", text: "Garments"
  end

  test "creating a Garment" do
    visit garments_url
    click_on "New Garment"

    fill_in "Desc", with: @garment.desc
    fill_in "Name", with: @garment.name
    fill_in "Type", with: @garment.type
    fill_in "User", with: @garment.user_id
    click_on "Create Garment"

    assert_text "Garment was successfully created"
    click_on "Back"
  end

  test "updating a Garment" do
    visit garments_url
    click_on "Edit", match: :first

    fill_in "Desc", with: @garment.desc
    fill_in "Name", with: @garment.name
    fill_in "Type", with: @garment.type
    fill_in "User", with: @garment.user_id
    click_on "Update Garment"

    assert_text "Garment was successfully updated"
    click_on "Back"
  end

  test "destroying a Garment" do
    visit garments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Garment was successfully destroyed"
  end
end
