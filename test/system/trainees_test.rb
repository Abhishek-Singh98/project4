require "application_system_test_case"

class TraineesTest < ApplicationSystemTestCase
  setup do
    @trainee = trainees(:one)
  end

  test "visiting the index" do
    visit trainees_url
    assert_selector "h1", text: "Trainees"
  end

  test "creating a Trainee" do
    visit trainees_url
    click_on "New Trainee"

    fill_in "City", with: @trainee.city
    fill_in "Contact", with: @trainee.contact
    fill_in "Description", with: @trainee.description
    fill_in "Email", with: @trainee.email
    fill_in "Name", with: @trainee.name
    click_on "Create Trainee"

    assert_text "Trainee was successfully created"
    click_on "Back"
  end

  test "updating a Trainee" do
    visit trainees_url
    click_on "Edit", match: :first

    fill_in "City", with: @trainee.city
    fill_in "Contact", with: @trainee.contact
    fill_in "Description", with: @trainee.description
    fill_in "Email", with: @trainee.email
    fill_in "Name", with: @trainee.name
    click_on "Update Trainee"

    assert_text "Trainee was successfully updated"
    click_on "Back"
  end

  test "destroying a Trainee" do
    visit trainees_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Trainee was successfully destroyed"
  end
end
