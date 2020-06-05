require 'test_helper'

class ImageEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @image_event = image_events(:one)
  end

  test "should get index" do
    get image_events_url
    assert_response :success
  end

  test "should get new" do
    get new_image_event_url
    assert_response :success
  end

  test "should create image_event" do
    assert_difference('ImageEvent.count') do
      post image_events_url, params: { image_event: { content: @image_event.content, event_id_id: @image_event.event_id_id } }
    end

    assert_redirected_to image_event_url(ImageEvent.last)
  end

  test "should show image_event" do
    get image_event_url(@image_event)
    assert_response :success
  end

  test "should get edit" do
    get edit_image_event_url(@image_event)
    assert_response :success
  end

  test "should update image_event" do
    patch image_event_url(@image_event), params: { image_event: { content: @image_event.content, event_id_id: @image_event.event_id_id } }
    assert_redirected_to image_event_url(@image_event)
  end

  test "should destroy image_event" do
    assert_difference('ImageEvent.count', -1) do
      delete image_event_url(@image_event)
    end

    assert_redirected_to image_events_url
  end
end
