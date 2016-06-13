require 'test_helper'

class TypedefinitiondiseaseneighborsControllerTest < ActionController::TestCase
  setup do
    @typedefinitiondiseaseneighbor = typedefinitiondiseaseneighbors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:typedefinitiondiseaseneighbors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create typedefinitiondiseaseneighbor" do
    assert_difference('Typedefinitiondiseaseneighbor.count') do
      post :create, typedefinitiondiseaseneighbor: { neighbor: @typedefinitiondiseaseneighbor.neighbor }
    end

    assert_redirected_to typedefinitiondiseaseneighbor_path(assigns(:typedefinitiondiseaseneighbor))
  end

  test "should show typedefinitiondiseaseneighbor" do
    get :show, id: @typedefinitiondiseaseneighbor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @typedefinitiondiseaseneighbor
    assert_response :success
  end

  test "should update typedefinitiondiseaseneighbor" do
    patch :update, id: @typedefinitiondiseaseneighbor, typedefinitiondiseaseneighbor: { neighbor: @typedefinitiondiseaseneighbor.neighbor }
    assert_redirected_to typedefinitiondiseaseneighbor_path(assigns(:typedefinitiondiseaseneighbor))
  end

  test "should destroy typedefinitiondiseaseneighbor" do
    assert_difference('Typedefinitiondiseaseneighbor.count', -1) do
      delete :destroy, id: @typedefinitiondiseaseneighbor
    end

    assert_redirected_to typedefinitiondiseaseneighbors_path
  end
end
