require 'test_helper'

class DisjointneighborsControllerTest < ActionController::TestCase
  setup do
    @disjointneighbor = disjointneighbors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:disjointneighbors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create disjointneighbor" do
    assert_difference('Disjointneighbor.count') do
      post :create, disjointneighbor: { neighbor: @disjointneighbor.neighbor }
    end

    assert_redirected_to disjointneighbor_path(assigns(:disjointneighbor))
  end

  test "should show disjointneighbor" do
    get :show, id: @disjointneighbor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @disjointneighbor
    assert_response :success
  end

  test "should update disjointneighbor" do
    patch :update, id: @disjointneighbor, disjointneighbor: { neighbor: @disjointneighbor.neighbor }
    assert_redirected_to disjointneighbor_path(assigns(:disjointneighbor))
  end

  test "should destroy disjointneighbor" do
    assert_difference('Disjointneighbor.count', -1) do
      delete :destroy, id: @disjointneighbor
    end

    assert_redirected_to disjointneighbors_path
  end
end
