require 'test_helper'

class TwodstructureregionsControllerTest < ActionController::TestCase
  setup do
    @twodstructureregion = twodstructureregions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:twodstructureregions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create twodstructureregion" do
    assert_difference('Twodstructureregion.count') do
      post :create, twodstructureregion: { end: @twodstructureregion.end, regiontype: @twodstructureregion.regiontype, start: @twodstructureregion.start }
    end

    assert_redirected_to twodstructureregion_path(assigns(:twodstructureregion))
  end

  test "should show twodstructureregion" do
    get :show, id: @twodstructureregion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @twodstructureregion
    assert_response :success
  end

  test "should update twodstructureregion" do
    patch :update, id: @twodstructureregion, twodstructureregion: { end: @twodstructureregion.end, regiontype: @twodstructureregion.regiontype, start: @twodstructureregion.start }
    assert_redirected_to twodstructureregion_path(assigns(:twodstructureregion))
  end

  test "should destroy twodstructureregion" do
    assert_difference('Twodstructureregion.count', -1) do
      delete :destroy, id: @twodstructureregion
    end

    assert_redirected_to twodstructureregions_path
  end
end
