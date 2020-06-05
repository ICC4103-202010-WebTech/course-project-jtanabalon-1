require "application_system_test_case"

class ImageEventsTest < ApplicationSystemTestCase
  setup do
    @image_event = image_events(:one)
  end

  test "visiting the index" do
    visit image_events_url
    assert_selector "h1", text: "Image Events"
  end

  test "creating a Image event" do
    visit image_events_url
    click_on "New Image Event"

    fill_in "Content", with: @image_event.content
    fill_in "Event id", with: @image_event.event_id_id
    click_on "Create Image event"

    assert_text "Image event was successfully created"
    click_on "Back"
  end

  test "updating a Image event" do
    visit image_events_url
    click_on "Edit", match: :first

    fill_in "Content", with: @image_event.content
    fill_in "Event id", with: @image_event.event_id_id
    click_on "Update Image event"

    assert_text "Image event was successfully updated"
    click_on "Back"
  end

  test "destroying a Image event" do
    visit image_events_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Image event was successfully destroyed"
  end
end
