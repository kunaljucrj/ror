require "application_system_test_case"

class DonorsTest < ApplicationSystemTestCase
  setup do
    @donor = donors(:one)
  end

  test "visiting the index" do
    visit donors_url
    assert_selector "h1", text: "Donors"
  end

  test "creating a Donor" do
    visit donors_url
    click_on "New Donor"

    fill_in "Age", with: @donor.age
    fill_in "Bloodgroup", with: @donor.bloodGroup
    fill_in "City", with: @donor.city
    fill_in "Email", with: @donor.email
    fill_in "Gender", with: @donor.gender
    fill_in "Lastdonatedate", with: @donor.lastDonateDate
    fill_in "Name", with: @donor.name
    fill_in "Phoneno", with: @donor.phoneNo
    click_on "Create Donor"

    assert_text "Donor was successfully created"
    click_on "Back"
  end

  test "updating a Donor" do
    visit donors_url
    click_on "Edit", match: :first

    fill_in "Age", with: @donor.age
    fill_in "Bloodgroup", with: @donor.bloodGroup
    fill_in "City", with: @donor.city
    fill_in "Email", with: @donor.email
    fill_in "Gender", with: @donor.gender
    fill_in "Lastdonatedate", with: @donor.lastDonateDate
    fill_in "Name", with: @donor.name
    fill_in "Phoneno", with: @donor.phoneNo
    click_on "Update Donor"

    assert_text "Donor was successfully updated"
    click_on "Back"
  end

  test "destroying a Donor" do
    visit donors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Donor was successfully destroyed"
  end
end
