require 'test_helper'

class OmimsControllerTest < ActionController::TestCase
  setup do
    @omim = omims(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:omims)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create omim" do
    assert_difference('Omim.count') do
      post :create, omim: { moodofinheritnce: @omim.moodofinheritnce, omimid: @omim.omimid, omimurl: @omim.omimurl }
    end

    assert_redirected_to omim_path(assigns(:omim))
  end

  test "should show omim" do
    get :show, id: @omim
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @omim
    assert_response :success
  end

  test "should update omim" do
    patch :update, id: @omim, omim: { moodofinheritnce: @omim.moodofinheritnce, omimid: @omim.omimid, omimurl: @omim.omimurl }
    assert_redirected_to omim_path(assigns(:omim))
  end

  test "should destroy omim" do
    assert_difference('Omim.count', -1) do
      delete :destroy, id: @omim
    end

    assert_redirected_to omims_path
  end
end
