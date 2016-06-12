require 'test_helper'

class PredictiontoolsControllerTest < ActionController::TestCase
  setup do
    @predictiontool = predictiontools(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:predictiontools)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create predictiontool" do
    assert_difference('Predictiontool.count') do
      post :create, predictiontool: { name: @predictiontool.name }
    end

    assert_redirected_to predictiontool_path(assigns(:predictiontool))
  end

  test "should show predictiontool" do
    get :show, id: @predictiontool
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @predictiontool
    assert_response :success
  end

  test "should update predictiontool" do
    patch :update, id: @predictiontool, predictiontool: { name: @predictiontool.name }
    assert_redirected_to predictiontool_path(assigns(:predictiontool))
  end

  test "should destroy predictiontool" do
    assert_difference('Predictiontool.count', -1) do
      delete :destroy, id: @predictiontool
    end

    assert_redirected_to predictiontools_path
  end
end
