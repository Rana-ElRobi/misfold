require 'test_helper'

class DiseasesynonymsControllerTest < ActionController::TestCase
  setup do
    @diseasesynonym = diseasesynonyms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:diseasesynonyms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create diseasesynonym" do
    assert_difference('Diseasesynonym.count') do
      post :create, diseasesynonym: { synonym: @diseasesynonym.synonym }
    end

    assert_redirected_to diseasesynonym_path(assigns(:diseasesynonym))
  end

  test "should show diseasesynonym" do
    get :show, id: @diseasesynonym
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @diseasesynonym
    assert_response :success
  end

  test "should update diseasesynonym" do
    patch :update, id: @diseasesynonym, diseasesynonym: { synonym: @diseasesynonym.synonym }
    assert_redirected_to diseasesynonym_path(assigns(:diseasesynonym))
  end

  test "should destroy diseasesynonym" do
    assert_difference('Diseasesynonym.count', -1) do
      delete :destroy, id: @diseasesynonym
    end

    assert_redirected_to diseasesynonyms_path
  end
end
