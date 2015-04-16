require 'test_helper'

class VoterListsControllerTest < ActionController::TestCase
  setup do
    @voter_list = voter_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:voter_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create voter_list" do
    assert_difference('VoterList.count') do
      post :create, voter_list: { election_id: @voter_list.election_id, updid: @voter_list.updid, user_id: @voter_list.user_id, voted: @voter_list.voted }
    end

    assert_redirected_to voter_list_path(assigns(:voter_list))
  end

  test "should show voter_list" do
    get :show, id: @voter_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @voter_list
    assert_response :success
  end

  test "should update voter_list" do
    put :update, id: @voter_list, voter_list: { election_id: @voter_list.election_id, updid: @voter_list.updid, user_id: @voter_list.user_id, voted: @voter_list.voted }
    assert_redirected_to voter_list_path(assigns(:voter_list))
  end

  test "should destroy voter_list" do
    assert_difference('VoterList.count', -1) do
      delete :destroy, id: @voter_list
    end

    assert_redirected_to voter_lists_path
  end
end
