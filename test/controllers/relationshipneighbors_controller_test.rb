require 'test_helper'

class RelationshipneighborsControllerTest < ActionController::TestCase
  setup do
    @relationshipneighbor = relationshipneighbors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:relationshipneighbors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create relationshipneighbor" do
    assert_difference('Relationshipneighbor.count') do
      post :create, relationshipneighbor: { neighbor: @relationshipneighbor.neighbor }
    end

    assert_redirected_to relationshipneighbor_path(assigns(:relationshipneighbor))
  end

  test "should show relationshipneighbor" do
    get :show, id: @relationshipneighbor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @relationshipneighbor
    assert_response :success
  end

  test "should update relationshipneighbor" do
    patch :update, id: @relationshipneighbor, relationshipneighbor: { neighbor: @relationshipneighbor.neighbor }
    assert_redirected_to relationshipneighbor_path(assigns(:relationshipneighbor))
  end

  test "should destroy relationshipneighbor" do
    assert_difference('Relationshipneighbor.count', -1) do
      delete :destroy, id: @relationshipneighbor
    end

    assert_redirected_to relationshipneighbors_path
  end
end
