require "application_system_test_case"

class ChaptersTest < ApplicationSystemTestCase
  setup do
    @chapter = chapters(:one)
  end

  test "visiting the index" do
    visit chapters_url
    assert_selector "h1", text: "Chapters"
  end

  test "creating a Chapter" do
    visit chapters_url
    click_on "New Chapter"

    fill_in "Admin", with: @chapter.admin_id
    fill_in "Title", with: @chapter.title
    fill_in "Views", with: @chapter.views
    click_on "Create Chapter"

    assert_text "Chapter was successfully created"
    click_on "Back"
  end

  test "updating a Chapter" do
    visit chapters_url
    click_on "Edit", match: :first

    fill_in "Admin", with: @chapter.admin_id
    fill_in "Title", with: @chapter.title
    fill_in "Views", with: @chapter.views
    click_on "Update Chapter"

    assert_text "Chapter was successfully updated"
    click_on "Back"
  end

  test "destroying a Chapter" do
    visit chapters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Chapter was successfully destroyed"
  end
end
