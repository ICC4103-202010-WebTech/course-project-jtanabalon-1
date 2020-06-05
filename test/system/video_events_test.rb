require "application_system_test_case"

class VideoEventsTest < ApplicationSystemTestCase
  setup do
    @video_event = video_events(:one)
  end

  test "visiting the index" do
    visit video_events_url
    assert_selector "h1", text: "Video Events"
  end

  test "creating a Video event" do
    visit video_events_url
    click_on "New Video Event"

    fill_in "Content", with: @video_event.content
    fill_in "Event id", with: @video_event.event_id_id
    click_on "Create Video event"

    assert_text "Video event was successfully created"
    click_on "Back"
  end

  test "updating a Video event" do
    visit video_events_url
    click_on "Edit", match: :first

    fill_in "Content", with: @video_event.content
    fill_in "Event id", with: @video_event.event_id_id
    click_on "Update Video event"

    assert_text "Video event was successfully updated"
    click_on "Back"
  end

  test "destroying a Video event" do
    visit video_events_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Video event was successfully destroyed"
  end
end
