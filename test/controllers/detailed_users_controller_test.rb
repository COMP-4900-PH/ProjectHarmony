require 'test_helper'

class DetailedUsersControllerTest < ActionController::TestCase
  setup do
    @detailed_user = detailed_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:detailed_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create detailed_user" do
    assert_difference('DetailedUser.count') do
      post :create, detailed_user: {  }
    end

    assert_redirected_to detailed_user_path(assigns(:detailed_user))
  end

  test "should show detailed_user" do
    get :show, id: @detailed_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @detailed_user
    assert_response :success
  end

  test "should update detailed_user" do
    patch :update, id: @detailed_user, detailed_user: {  }
    assert_redirected_to detailed_user_path(assigns(:detailed_user))
  end

  test "should destroy detailed_user" do
    assert_difference('DetailedUser.count', -1) do
      delete :destroy, id: @detailed_user
    end

    assert_redirected_to detailed_users_path
  end
end
