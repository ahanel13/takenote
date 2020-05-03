require "application_system_test_case"

class NotesTest < ApplicationSystemTestCase
  setup do
    @note = notes(:one)
  end

  test "visiting the index" do
    visit notes_url
    assert_selector "h1", text: "Notes"
  end

  test "creating a Note" do
    visit notes_url
    click_on "New Note"

    fill_in "Courses", with: @note.courses
    fill_in "Date taken", with: @note.date_taken
    fill_in "Key takeaways", with: @note.key_takeaways
    fill_in "Text", with: @note.text
    fill_in "Title", with: @note.title
    fill_in "Topic", with: @note.topic
    fill_in "Users", with: @note.users
    click_on "Create Note"

    assert_text "Note was successfully created"
    click_on "Back"
  end

  test "updating a Note" do
    visit notes_url
    click_on "Edit", match: :first

    fill_in "Courses", with: @note.courses
    fill_in "Date taken", with: @note.date_taken
    fill_in "Key takeaways", with: @note.key_takeaways
    fill_in "Text", with: @note.text
    fill_in "Title", with: @note.title
    fill_in "Topic", with: @note.topic
    fill_in "Users", with: @note.users
    click_on "Update Note"

    assert_text "Note was successfully updated"
    click_on "Back"
  end

  test "destroying a Note" do
    visit notes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Note was successfully destroyed"
  end
end
