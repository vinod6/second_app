require 'test_helper'

class UsewrsControllerTest < ActionController::TestCase
  setup do
    @usewr = usewrs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usewrs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usewr" do
    assert_difference('Usewr.count') do
      post :create, usewr: { email: @usewr.email, name: @usewr.name }
    end

    assert_redirected_to usewr_path(assigns(:usewr))
  end

  test "should show usewr" do
    get :show, id: @usewr
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usewr
    assert_response :success
  end

  test "should update usewr" do
    put :update, id: @usewr, usewr: { email: @usewr.email, name: @usewr.name }
    assert_redirected_to usewr_path(assigns(:usewr))
  end

  test "should destroy usewr" do
    assert_difference('Usewr.count', -1) do
      delete :destroy, id: @usewr
    end

    assert_redirected_to usewrs_path
  end
end
