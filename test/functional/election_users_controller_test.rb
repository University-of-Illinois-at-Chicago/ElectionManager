require 'test_helper'

class ElectionUsersControllerTest < ActionController::TestCase
  setup do
    @election_user = election_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:election_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create election_user" do
    assert_difference('ElectionUser.count') do
      post :create, election_user: { edit: @election_user.edit, election_id: @election_user.election_id, updid: @election_user.updid, user_id: @election_user.user_id, view_results: @election_user.view_results }
    end

    assert_redirected_to election_user_path(assigns(:election_user))
  end

  test "should show election_user" do
    get :show, id: @election_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @election_user
    assert_response :success
  end

  test "should update election_user" do
    put :update, id: @election_user, election_user: { edit: @election_user.edit, election_id: @election_user.election_id, updid: @election_user.updid, user_id: @election_user.user_id, view_results: @election_user.view_results }
    assert_redirected_to election_user_path(assigns(:election_user))
  end

  test "should destroy election_user" do
    assert_difference('ElectionUser.count', -1) do
      delete :destroy, id: @election_user
    end

    assert_redirected_to election_users_path
  end
end
