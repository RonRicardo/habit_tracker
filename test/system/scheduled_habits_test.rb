require "application_system_test_case"

class ScheduledHabitsTest < ApplicationSystemTestCase
  setup do
    @scheduled_habit = scheduled_habits(:one)
  end

  test "visiting the index" do
    visit scheduled_habits_url
    assert_selector "h1", text: "Scheduled Habits"
  end

  test "creating a Scheduled habit" do
    visit scheduled_habits_url
    click_on "New Scheduled Habit"

    click_on "Create Scheduled habit"

    assert_text "Scheduled habit was successfully created"
    click_on "Back"
  end

  test "updating a Scheduled habit" do
    visit scheduled_habits_url
    click_on "Edit", match: :first

    click_on "Update Scheduled habit"

    assert_text "Scheduled habit was successfully updated"
    click_on "Back"
  end

  test "destroying a Scheduled habit" do
    visit scheduled_habits_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Scheduled habit was successfully destroyed"
  end
end
