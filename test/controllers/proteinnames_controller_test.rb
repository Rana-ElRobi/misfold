require 'test_helper'

class ProteinnamesControllerTest < ActionController::TestCase
  setup do
    @proteinname = proteinnames(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:proteinnames)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create proteinname" do
    assert_difference('Proteinname.count') do
      post :create, proteinname: { isprimary: @proteinname.isprimary, name: @proteinname.name, type: @proteinname.type }
    end

    assert_redirected_to proteinname_path(assigns(:proteinname))
  end

  test "should show proteinname" do
    get :show, id: @proteinname
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @proteinname
    assert_response :success
  end

  test "should update proteinname" do
    patch :update, id: @proteinname, proteinname: { isprimary: @proteinname.isprimary, name: @proteinname.name, type: @proteinname.type }
    assert_redirected_to proteinname_path(assigns(:proteinname))
  end

  test "should destroy proteinname" do
    assert_difference('Proteinname.count', -1) do
      delete :destroy, id: @proteinname
    end

    assert_redirected_to proteinnames_path
  end
end
