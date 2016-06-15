require 'test_helper'

class DiseasesubsetsControllerTest < ActionController::TestCase
  setup do
    @diseasesubset = diseasesubsets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:diseasesubsets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create diseasesubset" do
    assert_difference('Diseasesubset.count') do
      post :create, diseasesubset: { subset: @diseasesubset.subset }
    end

    assert_redirected_to diseasesubset_path(assigns(:diseasesubset))
  end

  test "should show diseasesubset" do
    get :show, id: @diseasesubset
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @diseasesubset
    assert_response :success
  end

  test "should update diseasesubset" do
    patch :update, id: @diseasesubset, diseasesubset: { subset: @diseasesubset.subset }
    assert_redirected_to diseasesubset_path(assigns(:diseasesubset))
  end

  test "should destroy diseasesubset" do
    assert_difference('Diseasesubset.count', -1) do
      delete :destroy, id: @diseasesubset
    end

    assert_redirected_to diseasesubsets_path
  end
end
