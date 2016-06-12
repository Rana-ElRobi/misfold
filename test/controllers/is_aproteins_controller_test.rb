require 'test_helper'

class IsAproteinsControllerTest < ActionController::TestCase
  setup do
    @is_aprotein = is_aproteins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:is_aproteins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create is_aprotein" do
    assert_difference('IsAprotein.count') do
      post :create, is_aprotein: { id: @is_aprotein.id, name: @is_aprotein.name, neighbors: @is_aprotein.neighbors }
    end

    assert_redirected_to is_aprotein_path(assigns(:is_aprotein))
  end

  test "should show is_aprotein" do
    get :show, id: @is_aprotein
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @is_aprotein
    assert_response :success
  end

  test "should update is_aprotein" do
    patch :update, id: @is_aprotein, is_aprotein: { id: @is_aprotein.id, name: @is_aprotein.name, neighbors: @is_aprotein.neighbors }
    assert_redirected_to is_aprotein_path(assigns(:is_aprotein))
  end

  test "should destroy is_aprotein" do
    assert_difference('IsAprotein.count', -1) do
      delete :destroy, id: @is_aprotein
    end

    assert_redirected_to is_aproteins_path
  end
end
