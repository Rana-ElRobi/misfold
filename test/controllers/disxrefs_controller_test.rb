require 'test_helper'

class DisxrefsControllerTest < ActionController::TestCase
  setup do
    @disxref = disxrefs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:disxrefs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create disxref" do
    assert_difference('Disxref.count') do
      post :create, disxref: { xref: @disxref.xref }
    end

    assert_redirected_to disxref_path(assigns(:disxref))
  end

  test "should show disxref" do
    get :show, id: @disxref
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @disxref
    assert_response :success
  end

  test "should update disxref" do
    patch :update, id: @disxref, disxref: { xref: @disxref.xref }
    assert_redirected_to disxref_path(assigns(:disxref))
  end

  test "should destroy disxref" do
    assert_difference('Disxref.count', -1) do
      delete :destroy, id: @disxref
    end

    assert_redirected_to disxrefs_path
  end
end
