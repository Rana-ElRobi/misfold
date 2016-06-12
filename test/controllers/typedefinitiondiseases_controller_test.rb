require 'test_helper'

class TypedefinitiondiseasesControllerTest < ActionController::TestCase
  setup do
    @typedefinitiondisease = typedefinitiondiseases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:typedefinitiondiseases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create typedefinitiondisease" do
    assert_difference('Typedefinitiondisease.count') do
      post :create, typedefinitiondisease: { definition: @typedefinitiondisease.definition, id: @typedefinitiondisease.id, name: @typedefinitiondisease.name, neighbors: @typedefinitiondisease.neighbors }
    end

    assert_redirected_to typedefinitiondisease_path(assigns(:typedefinitiondisease))
  end

  test "should show typedefinitiondisease" do
    get :show, id: @typedefinitiondisease
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @typedefinitiondisease
    assert_response :success
  end

  test "should update typedefinitiondisease" do
    patch :update, id: @typedefinitiondisease, typedefinitiondisease: { definition: @typedefinitiondisease.definition, id: @typedefinitiondisease.id, name: @typedefinitiondisease.name, neighbors: @typedefinitiondisease.neighbors }
    assert_redirected_to typedefinitiondisease_path(assigns(:typedefinitiondisease))
  end

  test "should destroy typedefinitiondisease" do
    assert_difference('Typedefinitiondisease.count', -1) do
      delete :destroy, id: @typedefinitiondisease
    end

    assert_redirected_to typedefinitiondiseases_path
  end
end
