require 'test_helper'

class GoannotationsControllerTest < ActionController::TestCase
  setup do
    @goannotation = goannotations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:goannotations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create goannotation" do
    assert_difference('Goannotation.count') do
      post :create, goannotation: { annotate: @goannotation.annotate }
    end

    assert_redirected_to goannotation_path(assigns(:goannotation))
  end

  test "should show goannotation" do
    get :show, id: @goannotation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @goannotation
    assert_response :success
  end

  test "should update goannotation" do
    patch :update, id: @goannotation, goannotation: { annotate: @goannotation.annotate }
    assert_redirected_to goannotation_path(assigns(:goannotation))
  end

  test "should destroy goannotation" do
    assert_difference('Goannotation.count', -1) do
      delete :destroy, id: @goannotation
    end

    assert_redirected_to goannotations_path
  end
end
