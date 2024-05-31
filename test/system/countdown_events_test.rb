require "application_system_test_case"

class CountdownEventsTest < ApplicationSystemTestCase
  setup do
    @countdown_event = countdown_events(:one)
  end

  test "visiting the index" do
    visit countdown_events_url
    assert_selector "h1", text: "Countdown events"
  end

  test "should create countdown event" do
    visit countdown_events_url
    click_on "New countdown event"

    fill_in "Description", with: @countdown_event.description
    fill_in "Name", with: @countdown_event.name
    fill_in "Target", with: @countdown_event.target
    click_on "Create Countdown event"

    assert_text "Countdown event was successfully created"
    click_on "Back"
  end

  test "should update Countdown event" do
    visit countdown_event_url(@countdown_event)
    click_on "Edit this countdown event", match: :first

    fill_in "Description", with: @countdown_event.description
    fill_in "Name", with: @countdown_event.name
    fill_in "Target", with: @countdown_event.target
    click_on "Update Countdown event"

    assert_text "Countdown event was successfully updated"
    click_on "Back"
  end

  test "should destroy Countdown event" do
    visit countdown_event_url(@countdown_event)
    click_on "Destroy this countdown event", match: :first

    assert_text "Countdown event was successfully destroyed"
  end
end
