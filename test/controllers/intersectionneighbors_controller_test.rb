require 'test_helper'

class IntersectionneighborsControllerTest < ActionController::TestCase
  setup do
    @intersectionneighbor = intersectionneighbors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:intersectionneighbors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create intersectionneighbor" do
    assert_difference('Intersectionneighbor.count') do
      post :create, intersectionneighbor: { neighbor: @intersectionneighbor.neighbor }
    end

    assert_redirected_to intersectionneighbor_path(assigns(:intersectionneighbor))
  end

  test "should show intersectionneighbor" do
    get :show, id: @intersectionneighbor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @intersectionneighbor
    assert_response :success
  end

  test "should update intersectionneighbor" do
    patch :update, id: @intersectionneighbor, intersectionneighbor: { neighbor: @intersectionneighbor.neighbor }
    assert_redirected_to intersectionneighbor_path(assigns(:intersectionneighbor))
  end

  test "should destroy intersectionneighbor" do
    assert_difference('Intersectionneighbor.count', -1) do
      delete :destroy, id: @intersectionneighbor
    end

    assert_redirected_to intersectionneighbors_path
  end
end
