require 'test_helper'

class EventnotifiersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @eventnotifier = eventnotifiers(:one)
  end

  test "should get index" do
    get eventnotifiers_url
    assert_response :success
  end

  test "should get new" do
    get new_eventnotifier_url
    assert_response :success
  end

  test "should create eventnotifier" do
    assert_difference('Eventnotifier.count') do
      post eventnotifiers_url, params: { eventnotifier: { description: @eventnotifier.description, event: @eventnotifier.event, event_chairman: @eventnotifier.event_chairman, event_company: @eventnotifier.event_company, event_duration: @eventnotifier.event_duration, event_end: @eventnotifier.event_end, event_for: @eventnotifier.event_for, event_image: @eventnotifier.event_image, event_name: @eventnotifier.event_name, event_sponser: @eventnotifier.event_sponser, event_start: @eventnotifier.event_start, event_subject: @eventnotifier.event_subject, event_venue: @eventnotifier.event_venue } }
    end

    assert_redirected_to eventnotifier_url(Eventnotifier.last)
  end

  test "should show eventnotifier" do
    get eventnotifier_url(@eventnotifier)
    assert_response :success
  end

  test "should get edit" do
    get edit_eventnotifier_url(@eventnotifier)
    assert_response :success
  end

  test "should update eventnotifier" do
    patch eventnotifier_url(@eventnotifier), params: { eventnotifier: { description: @eventnotifier.description, event: @eventnotifier.event, event_chairman: @eventnotifier.event_chairman, event_company: @eventnotifier.event_company, event_duration: @eventnotifier.event_duration, event_end: @eventnotifier.event_end, event_for: @eventnotifier.event_for, event_image: @eventnotifier.event_image, event_name: @eventnotifier.event_name, event_sponser: @eventnotifier.event_sponser, event_start: @eventnotifier.event_start, event_subject: @eventnotifier.event_subject, event_venue: @eventnotifier.event_venue } }
    assert_redirected_to eventnotifier_url(@eventnotifier)
  end

  test "should destroy eventnotifier" do
    assert_difference('Eventnotifier.count', -1) do
      delete eventnotifier_url(@eventnotifier)
    end

    assert_redirected_to eventnotifiers_url
  end
end
