require 'test_helper'

class DisjointFromsControllerTest < ActionController::TestCase
  setup do
    @disjoint_from = disjoint_froms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:disjoint_froms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create disjoint_from" do
    assert_difference('DisjointFrom.count') do
      post :create, disjoint_from: { id: @disjoint_from.id, name: @disjoint_from.name, neighbors: @disjoint_from.neighbors }
    end

    assert_redirected_to disjoint_from_path(assigns(:disjoint_from))
  end

  test "should show disjoint_from" do
    get :show, id: @disjoint_from
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @disjoint_from
    assert_response :success
  end

  test "should update disjoint_from" do
    patch :update, id: @disjoint_from, disjoint_from: { id: @disjoint_from.id, name: @disjoint_from.name, neighbors: @disjoint_from.neighbors }
    assert_redirected_to disjoint_from_path(assigns(:disjoint_from))
  end

  test "should destroy disjoint_from" do
    assert_difference('DisjointFrom.count', -1) do
      delete :destroy, id: @disjoint_from
    end

    assert_redirected_to disjoint_froms_path
  end
end
