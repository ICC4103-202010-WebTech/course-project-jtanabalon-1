require "application_system_test_case"

class FileEventsTest < ApplicationSystemTestCase
  setup do
    @file_event = file_events(:one)
  end

  test "visiting the index" do
    visit file_events_url
    assert_selector "h1", text: "File Events"
  end

  test "creating a File event" do
    visit file_events_url
    click_on "New File Event"

    fill_in "Content", with: @file_event.content
    fill_in "Event id", with: @file_event.event_id_id
    click_on "Create File event"

    assert_text "File event was successfully created"
    click_on "Back"
  end

  test "updating a File event" do
    visit file_events_url
    click_on "Edit", match: :first

    fill_in "Content", with: @file_event.content
    fill_in "Event id", with: @file_event.event_id_id
    click_on "Update File event"

    assert_text "File event was successfully updated"
    click_on "Back"
  end

  test "destroying a File event" do
    visit file_events_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "File event was successfully destroyed"
  end
end
