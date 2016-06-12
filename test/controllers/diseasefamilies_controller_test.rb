require 'test_helper'

class DiseasefamiliesControllerTest < ActionController::TestCase
  setup do
    @diseasefamily = diseasefamilies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:diseasefamilies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create diseasefamily" do
    assert_difference('Diseasefamily.count') do
      post :create, diseasefamily: { familyid: @diseasefamily.familyid, familyname: @diseasefamily.familyname }
    end

    assert_redirected_to diseasefamily_path(assigns(:diseasefamily))
  end

  test "should show diseasefamily" do
    get :show, id: @diseasefamily
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @diseasefamily
    assert_response :success
  end

  test "should update diseasefamily" do
    patch :update, id: @diseasefamily, diseasefamily: { familyid: @diseasefamily.familyid, familyname: @diseasefamily.familyname }
    assert_redirected_to diseasefamily_path(assigns(:diseasefamily))
  end

  test "should destroy diseasefamily" do
    assert_difference('Diseasefamily.count', -1) do
      delete :destroy, id: @diseasefamily
    end

    assert_redirected_to diseasefamilies_path
  end
end
