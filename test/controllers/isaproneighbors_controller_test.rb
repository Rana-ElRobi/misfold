require 'test_helper'

class IsaproneighborsControllerTest < ActionController::TestCase
  setup do
    @isaproneighbor = isaproneighbors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:isaproneighbors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create isaproneighbor" do
    assert_difference('Isaproneighbor.count') do
      post :create, isaproneighbor: { neighbor: @isaproneighbor.neighbor }
    end

    assert_redirected_to isaproneighbor_path(assigns(:isaproneighbor))
  end

  test "should show isaproneighbor" do
    get :show, id: @isaproneighbor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @isaproneighbor
    assert_response :success
  end

  test "should update isaproneighbor" do
    patch :update, id: @isaproneighbor, isaproneighbor: { neighbor: @isaproneighbor.neighbor }
    assert_redirected_to isaproneighbor_path(assigns(:isaproneighbor))
  end

  test "should destroy isaproneighbor" do
    assert_difference('Isaproneighbor.count', -1) do
      delete :destroy, id: @isaproneighbor
    end

    assert_redirected_to isaproneighbors_path
  end
end
