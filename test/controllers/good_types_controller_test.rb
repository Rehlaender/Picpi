require 'test_helper'

class GoodTypesControllerTest < ActionController::TestCase
  setup do
    @good_type = good_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:good_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create good_type" do
    assert_difference('GoodType.count') do
      post :create, good_type: { name: @good_type.name }
    end

    assert_redirected_to good_type_path(assigns(:good_type))
  end

  test "should show good_type" do
    get :show, id: @good_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @good_type
    assert_response :success
  end

  test "should update good_type" do
    patch :update, id: @good_type, good_type: { name: @good_type.name }
    assert_redirected_to good_type_path(assigns(:good_type))
  end

  test "should destroy good_type" do
    assert_difference('GoodType.count', -1) do
      delete :destroy, id: @good_type
    end

    assert_redirected_to good_types_path
  end
end
