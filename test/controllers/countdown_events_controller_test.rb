require "test_helper"

class CountdownEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @countdown_event = countdown_events(:one)
  end

  test "should get index" do
    get countdown_events_url
    assert_response :success
  end

  test "should get new" do
    get new_countdown_event_url
    assert_response :success
  end

  test "should create countdown_event" do
    assert_difference("CountdownEvent.count") do
      post countdown_events_url, params: { countdown_event: { description: @countdown_event.description, name: @countdown_event.name, target: @countdown_event.target } }
    end

    assert_redirected_to countdown_event_url(CountdownEvent.last)
  end

  test "should show countdown_event" do
    get countdown_event_url(@countdown_event)
    assert_response :success
  end

  test "should get edit" do
    get edit_countdown_event_url(@countdown_event)
    assert_response :success
  end

  test "should update countdown_event" do
    patch countdown_event_url(@countdown_event), params: { countdown_event: { description: @countdown_event.description, name: @countdown_event.name, target: @countdown_event.target } }
    assert_redirected_to countdown_event_url(@countdown_event)
  end

  test "should destroy countdown_event" do
    assert_difference("CountdownEvent.count", -1) do
      delete countdown_event_url(@countdown_event)
    end

    assert_redirected_to countdown_events_url
  end
end
