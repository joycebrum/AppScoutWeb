require "application_system_test_case"

class ScoutBranchesTest < ApplicationSystemTestCase
  setup do
    @scout_branch = scout_branches(:one)
  end

  test "visiting the index" do
    visit scout_branches_url
    assert_selector "h1", text: "Scout Branches"
  end

  test "creating a Scout branch" do
    visit scout_branches_url
    click_on "New Scout Branch"

    fill_in "Description", with: @scout_branch.description
    click_on "Create Scout branch"

    assert_text "Scout branch was successfully created"
    click_on "Back"
  end

  test "updating a Scout branch" do
    visit scout_branches_url
    click_on "Edit", match: :first

    fill_in "Description", with: @scout_branch.description
    click_on "Update Scout branch"

    assert_text "Scout branch was successfully updated"
    click_on "Back"
  end

  test "destroying a Scout branch" do
    visit scout_branches_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Scout branch was successfully destroyed"
  end
end
