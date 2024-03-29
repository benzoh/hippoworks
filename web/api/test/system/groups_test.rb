require "application_system_test_case"

class GroupsTest < ApplicationSystemTestCase
  setup do
    @group = groups(:one)
  end

  test "visiting the index" do
    visit groups_url
    assert_selector "h1", text: "Groups"
  end

  test "creating a Group" do
    visit groups_url
    click_on "New Group"

    fill_in "Create Account", with: @group.create_account_id
    fill_in "Icon Img", with: @group.icon_img
    fill_in "Invitation Authority", with: @group.invitation_authority
    fill_in "Name", with: @group.name
    fill_in "Notice", with: @group.notice
    click_on "Create Group"

    assert_text "Group was successfully created"
    click_on "Back"
  end

  test "updating a Group" do
    visit groups_url
    click_on "Edit", match: :first

    fill_in "Create Account", with: @group.create_account_id
    fill_in "Icon Img", with: @group.icon_img
    fill_in "Invitation Authority", with: @group.invitation_authority
    fill_in "Name", with: @group.name
    fill_in "Notice", with: @group.notice
    click_on "Update Group"

    assert_text "Group was successfully updated"
    click_on "Back"
  end

  test "destroying a Group" do
    visit groups_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Group was successfully destroyed"
  end
end
