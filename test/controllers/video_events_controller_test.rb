require 'test_helper'

class VideoEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @video_event = video_events(:one)
  end

  test "should get index" do
    get video_events_url
    assert_response :success
  end

  test "should get new" do
    get new_video_event_url
    assert_response :success
  end

  test "should create video_event" do
    assert_difference('VideoEvent.count') do
      post video_events_url, params: { video_event: { content: @video_event.content, event_id_id: @video_event.event_id_id } }
    end

    assert_redirected_to video_event_url(VideoEvent.last)
  end

  test "should show video_event" do
    get video_event_url(@video_event)
    assert_response :success
  end

  test "should get edit" do
    get edit_video_event_url(@video_event)
    assert_response :success
  end

  test "should update video_event" do
    patch video_event_url(@video_event), params: { video_event: { content: @video_event.content, event_id_id: @video_event.event_id_id } }
    assert_redirected_to video_event_url(@video_event)
  end

  test "should destroy video_event" do
    assert_difference('VideoEvent.count', -1) do
      delete video_event_url(@video_event)
    end

    assert_redirected_to video_events_url
  end
end
