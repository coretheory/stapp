require "application_system_test_case"

class ContextualObjectsTest < ApplicationSystemTestCase
  setup do
    @contextual_object = contextual_objects(:one)
  end

  test "visiting the index" do
    visit contextual_objects_url
    assert_selector "h1", text: "Contextual Objects"
  end

  test "creating a Contextual object" do
    visit contextual_objects_url
    click_on "New Contextual Object"

    click_on "Create Contextual object"

    assert_text "Contextual object was successfully created"
    click_on "Back"
  end

  test "updating a Contextual object" do
    visit contextual_objects_url
    click_on "Edit", match: :first

    click_on "Update Contextual object"

    assert_text "Contextual object was successfully updated"
    click_on "Back"
  end

  test "destroying a Contextual object" do
    visit contextual_objects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contextual object was successfully destroyed"
  end
end
