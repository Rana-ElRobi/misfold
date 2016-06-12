require 'test_helper'

class IsAdiseasesControllerTest < ActionController::TestCase
  setup do
    @is_adisease = is_adiseases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:is_adiseases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create is_adisease" do
    assert_difference('IsAdisease.count') do
      post :create, is_adisease: { id: @is_adisease.id, name: @is_adisease.name, neighbors: @is_adisease.neighbors }
    end

    assert_redirected_to is_adisease_path(assigns(:is_adisease))
  end

  test "should show is_adisease" do
    get :show, id: @is_adisease
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @is_adisease
    assert_response :success
  end

  test "should update is_adisease" do
    patch :update, id: @is_adisease, is_adisease: { id: @is_adisease.id, name: @is_adisease.name, neighbors: @is_adisease.neighbors }
    assert_redirected_to is_adisease_path(assigns(:is_adisease))
  end

  test "should destroy is_adisease" do
    assert_difference('IsAdisease.count', -1) do
      delete :destroy, id: @is_adisease
    end

    assert_redirected_to is_adiseases_path
  end
end
