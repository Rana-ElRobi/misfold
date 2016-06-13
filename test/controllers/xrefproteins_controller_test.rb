require 'test_helper'

class XrefproteinsControllerTest < ActionController::TestCase
  setup do
    @xrefprotein = xrefproteins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:xrefproteins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create xrefprotein" do
    assert_difference('Xrefprotein.count') do
      post :create, xrefprotein: { xrefname: @xrefprotein.xrefname }
    end

    assert_redirected_to xrefprotein_path(assigns(:xrefprotein))
  end

  test "should show xrefprotein" do
    get :show, id: @xrefprotein
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @xrefprotein
    assert_response :success
  end

  test "should update xrefprotein" do
    patch :update, id: @xrefprotein, xrefprotein: { xrefname: @xrefprotein.xrefname }
    assert_redirected_to xrefprotein_path(assigns(:xrefprotein))
  end

  test "should destroy xrefprotein" do
    assert_difference('Xrefprotein.count', -1) do
      delete :destroy, id: @xrefprotein
    end

    assert_redirected_to xrefproteins_path
  end
end
