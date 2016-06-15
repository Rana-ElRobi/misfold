require 'test_helper'

class TypedefinitionproteinsControllerTest < ActionController::TestCase
  setup do
    @typedefinitionprotein = typedefinitionproteins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:typedefinitionproteins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create typedefinitionprotein" do
    assert_difference('Typedefinitionprotein.count') do
      post :create, typedefinitionprotein: { comment: @typedefinitionprotein.comment, definition: @typedefinitionprotein.definition, id: @typedefinitionprotein.id, is_obsolete: @typedefinitionprotein.is_obsolete, is_transitive: @typedefinitionprotein.is_transitive, name: @typedefinitionprotein.name, neighbors: @typedefinitionprotein.neighbors, synonym: @typedefinitionprotein.synonym }
    end

    assert_redirected_to typedefinitionprotein_path(assigns(:typedefinitionprotein))
  end

  test "should show typedefinitionprotein" do
    get :show, id: @typedefinitionprotein
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @typedefinitionprotein
    assert_response :success
  end

  test "should update typedefinitionprotein" do
    patch :update, id: @typedefinitionprotein, typedefinitionprotein: { comment: @typedefinitionprotein.comment, definition: @typedefinitionprotein.definition, id: @typedefinitionprotein.id, is_obsolete: @typedefinitionprotein.is_obsolete, is_transitive: @typedefinitionprotein.is_transitive, name: @typedefinitionprotein.name, neighbors: @typedefinitionprotein.neighbors, synonym: @typedefinitionprotein.synonym }
    assert_redirected_to typedefinitionprotein_path(assigns(:typedefinitionprotein))
  end

  test "should destroy typedefinitionprotein" do
    assert_difference('Typedefinitionprotein.count', -1) do
      delete :destroy, id: @typedefinitionprotein
    end

    assert_redirected_to typedefinitionproteins_path
  end
end
