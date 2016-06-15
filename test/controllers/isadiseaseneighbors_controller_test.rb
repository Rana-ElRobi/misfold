require 'test_helper'

class IsadiseaseneighborsControllerTest < ActionController::TestCase
  setup do
    @isadiseaseneighbor = isadiseaseneighbors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:isadiseaseneighbors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create isadiseaseneighbor" do
    assert_difference('Isadiseaseneighbor.count') do
      post :create, isadiseaseneighbor: { neighbor: @isadiseaseneighbor.neighbor }
    end

    assert_redirected_to isadiseaseneighbor_path(assigns(:isadiseaseneighbor))
  end

  test "should show isadiseaseneighbor" do
    get :show, id: @isadiseaseneighbor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @isadiseaseneighbor
    assert_response :success
  end

  test "should update isadiseaseneighbor" do
    patch :update, id: @isadiseaseneighbor, isadiseaseneighbor: { neighbor: @isadiseaseneighbor.neighbor }
    assert_redirected_to isadiseaseneighbor_path(assigns(:isadiseaseneighbor))
  end

  test "should destroy isadiseaseneighbor" do
    assert_difference('Isadiseaseneighbor.count', -1) do
      delete :destroy, id: @isadiseaseneighbor
    end

    assert_redirected_to isadiseaseneighbors_path
  end
end
