require "application_system_test_case"

class EventnotifiersTest < ApplicationSystemTestCase
  setup do
    @eventnotifier = eventnotifiers(:one)
  end

  test "visiting the index" do
    visit eventnotifiers_url
    assert_selector "h1", text: "Eventnotifiers"
  end

  test "creating a Eventnotifier" do
    visit eventnotifiers_url
    click_on "New Eventnotifier"

    fill_in "Description", with: @eventnotifier.description
    fill_in "Event", with: @eventnotifier.event
    fill_in "Event chairman", with: @eventnotifier.event_chairman
    fill_in "Event company", with: @eventnotifier.event_company
    fill_in "Event duration", with: @eventnotifier.event_duration
    fill_in "Event end", with: @eventnotifier.event_end
    fill_in "Event for", with: @eventnotifier.event_for
    fill_in "Event image", with: @eventnotifier.event_image
    fill_in "Event name", with: @eventnotifier.event_name
    fill_in "Event sponser", with: @eventnotifier.event_sponser
    fill_in "Event start", with: @eventnotifier.event_start
    fill_in "Event subject", with: @eventnotifier.event_subject
    fill_in "Event venue", with: @eventnotifier.event_venue
    click_on "Create Eventnotifier"

    assert_text "Eventnotifier was successfully created"
    click_on "Back"
  end

  test "updating a Eventnotifier" do
    visit eventnotifiers_url
    click_on "Edit", match: :first

    fill_in "Description", with: @eventnotifier.description
    fill_in "Event", with: @eventnotifier.event
    fill_in "Event chairman", with: @eventnotifier.event_chairman
    fill_in "Event company", with: @eventnotifier.event_company
    fill_in "Event duration", with: @eventnotifier.event_duration
    fill_in "Event end", with: @eventnotifier.event_end
    fill_in "Event for", with: @eventnotifier.event_for
    fill_in "Event image", with: @eventnotifier.event_image
    fill_in "Event name", with: @eventnotifier.event_name
    fill_in "Event sponser", with: @eventnotifier.event_sponser
    fill_in "Event start", with: @eventnotifier.event_start
    fill_in "Event subject", with: @eventnotifier.event_subject
    fill_in "Event venue", with: @eventnotifier.event_venue
    click_on "Update Eventnotifier"

    assert_text "Eventnotifier was successfully updated"
    click_on "Back"
  end

  test "destroying a Eventnotifier" do
    visit eventnotifiers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Eventnotifier was successfully destroyed"
  end
end
