require 'test_helper'

class ScoutBranchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @scout_branch = scout_branches(:one)
  end

  test "should get index" do
    get scout_branches_url
    assert_response :success
  end

  test "should get new" do
    get new_scout_branch_url
    assert_response :success
  end

  test "should create scout_branch" do
    assert_difference('ScoutBranch.count') do
      post scout_branches_url, params: { scout_branch: { description: @scout_branch.description } }
    end

    assert_redirected_to scout_branch_url(ScoutBranch.last)
  end

  test "should show scout_branch" do
    get scout_branch_url(@scout_branch)
    assert_response :success
  end

  test "should get edit" do
    get edit_scout_branch_url(@scout_branch)
    assert_response :success
  end

  test "should update scout_branch" do
    patch scout_branch_url(@scout_branch), params: { scout_branch: { description: @scout_branch.description } }
    assert_redirected_to scout_branch_url(@scout_branch)
  end

  test "should destroy scout_branch" do
    assert_difference('ScoutBranch.count', -1) do
      delete scout_branch_url(@scout_branch)
    end

    assert_redirected_to scout_branches_url
  end
end
