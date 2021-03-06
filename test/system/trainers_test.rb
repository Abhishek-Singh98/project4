require "application_system_test_case"

class TrainersTest < ApplicationSystemTestCase
  setup do
    @trainer = trainers(:one)
  end

  test "visiting the index" do
    visit trainers_url
    assert_selector "h1", text: "Trainers"
  end

  test "creating a Trainer" do
    visit trainers_url
    click_on "New Trainer"

    fill_in "City", with: @trainer.city
    fill_in "Description", with: @trainer.description
    fill_in "Email", with: @trainer.email
    fill_in "Experience", with: @trainer.experience
    fill_in "Fees", with: @trainer.fees
    fill_in "Name", with: @trainer.name
    click_on "Create Trainer"

    assert_text "Trainer was successfully created"
    click_on "Back"
  end

  test "updating a Trainer" do
    visit trainers_url
    click_on "Edit", match: :first

    fill_in "City", with: @trainer.city
    fill_in "Description", with: @trainer.description
    fill_in "Email", with: @trainer.email
    fill_in "Experience", with: @trainer.experience
    fill_in "Fees", with: @trainer.fees
    fill_in "Name", with: @trainer.name
    click_on "Update Trainer"

    assert_text "Trainer was successfully updated"
    click_on "Back"
  end

  test "destroying a Trainer" do
    visit trainers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Trainer was successfully destroyed"
  end
end
