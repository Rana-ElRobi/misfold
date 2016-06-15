require 'test_helper'

class IntersectionOfsControllerTest < ActionController::TestCase
  setup do
    @intersection_of = intersection_ofs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:intersection_ofs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create intersection_of" do
    assert_difference('IntersectionOf.count') do
      post :create, intersection_of: { id: @intersection_of.id, name: @intersection_of.name, neighbors: @intersection_of.neighbors }
    end

    assert_redirected_to intersection_of_path(assigns(:intersection_of))
  end

  test "should show intersection_of" do
    get :show, id: @intersection_of
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @intersection_of
    assert_response :success
  end

  test "should update intersection_of" do
    patch :update, id: @intersection_of, intersection_of: { id: @intersection_of.id, name: @intersection_of.name, neighbors: @intersection_of.neighbors }
    assert_redirected_to intersection_of_path(assigns(:intersection_of))
  end

  test "should destroy intersection_of" do
    assert_difference('IntersectionOf.count', -1) do
      delete :destroy, id: @intersection_of
    end

    assert_redirected_to intersection_ofs_path
  end
end
