require 'test_helper'

class TypedefinitionproteinneighborsControllerTest < ActionController::TestCase
  setup do
    @typedefinitionproteinneighbor = typedefinitionproteinneighbors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:typedefinitionproteinneighbors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create typedefinitionproteinneighbor" do
    assert_difference('Typedefinitionproteinneighbor.count') do
      post :create, typedefinitionproteinneighbor: { neighbor: @typedefinitionproteinneighbor.neighbor }
    end

    assert_redirected_to typedefinitionproteinneighbor_path(assigns(:typedefinitionproteinneighbor))
  end

  test "should show typedefinitionproteinneighbor" do
    get :show, id: @typedefinitionproteinneighbor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @typedefinitionproteinneighbor
    assert_response :success
  end

  test "should update typedefinitionproteinneighbor" do
    patch :update, id: @typedefinitionproteinneighbor, typedefinitionproteinneighbor: { neighbor: @typedefinitionproteinneighbor.neighbor }
    assert_redirected_to typedefinitionproteinneighbor_path(assigns(:typedefinitionproteinneighbor))
  end

  test "should destroy typedefinitionproteinneighbor" do
    assert_difference('Typedefinitionproteinneighbor.count', -1) do
      delete :destroy, id: @typedefinitionproteinneighbor
    end

    assert_redirected_to typedefinitionproteinneighbors_path
  end
end
