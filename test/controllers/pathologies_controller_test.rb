require 'test_helper'

class PathologiesControllerTest < ActionController::TestCase
  setup do
    @pathology = pathologies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pathologies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pathology" do
    assert_difference('Pathology.count') do
      post :create, pathology: { grosspicture: @pathology.grosspicture, microscopicpicture: @pathology.microscopicpicture }
    end

    assert_redirected_to pathology_path(assigns(:pathology))
  end

  test "should show pathology" do
    get :show, id: @pathology
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pathology
    assert_response :success
  end

  test "should update pathology" do
    patch :update, id: @pathology, pathology: { grosspicture: @pathology.grosspicture, microscopicpicture: @pathology.microscopicpicture }
    assert_redirected_to pathology_path(assigns(:pathology))
  end

  test "should destroy pathology" do
    assert_difference('Pathology.count', -1) do
      delete :destroy, id: @pathology
    end

    assert_redirected_to pathologies_path
  end
end
