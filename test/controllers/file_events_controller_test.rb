require 'test_helper'

class FileEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @file_event = file_events(:one)
  end

  test "should get index" do
    get file_events_url
    assert_response :success
  end

  test "should get new" do
    get new_file_event_url
    assert_response :success
  end

  test "should create file_event" do
    assert_difference('FileEvent.count') do
      post file_events_url, params: { file_event: { content: @file_event.content, event_id_id: @file_event.event_id_id } }
    end

    assert_redirected_to file_event_url(FileEvent.last)
  end

  test "should show file_event" do
    get file_event_url(@file_event)
    assert_response :success
  end

  test "should get edit" do
    get edit_file_event_url(@file_event)
    assert_response :success
  end

  test "should update file_event" do
    patch file_event_url(@file_event), params: { file_event: { content: @file_event.content, event_id_id: @file_event.event_id_id } }
    assert_redirected_to file_event_url(@file_event)
  end

  test "should destroy file_event" do
    assert_difference('FileEvent.count', -1) do
      delete file_event_url(@file_event)
    end

    assert_redirected_to file_events_url
  end
end
