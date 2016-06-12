require 'test_helper'

class ConservedregionsControllerTest < ActionController::TestCase
  setup do
    @conservedregion = conservedregions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:conservedregions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create conservedregion" do
    assert_difference('Conservedregion.count') do
      post :create, conservedregion: { end: @conservedregion.end, name: @conservedregion.name, score: @conservedregion.score, start: @conservedregion.start, type: @conservedregion.type }
    end

    assert_redirected_to conservedregion_path(assigns(:conservedregion))
  end

  test "should show conservedregion" do
    get :show, id: @conservedregion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @conservedregion
    assert_response :success
  end

  test "should update conservedregion" do
    patch :update, id: @conservedregion, conservedregion: { end: @conservedregion.end, name: @conservedregion.name, score: @conservedregion.score, start: @conservedregion.start, type: @conservedregion.type }
    assert_redirected_to conservedregion_path(assigns(:conservedregion))
  end

  test "should destroy conservedregion" do
    assert_difference('Conservedregion.count', -1) do
      delete :destroy, id: @conservedregion
    end

    assert_redirected_to conservedregions_path
  end
end
