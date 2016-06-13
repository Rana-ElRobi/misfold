require 'test_helper'

class SynonymproteinsControllerTest < ActionController::TestCase
  setup do
    @synonymprotein = synonymproteins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:synonymproteins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create synonymprotein" do
    assert_difference('Synonymprotein.count') do
      post :create, synonymprotein: { synonymname: @synonymprotein.synonymname }
    end

    assert_redirected_to synonymprotein_path(assigns(:synonymprotein))
  end

  test "should show synonymprotein" do
    get :show, id: @synonymprotein
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @synonymprotein
    assert_response :success
  end

  test "should update synonymprotein" do
    patch :update, id: @synonymprotein, synonymprotein: { synonymname: @synonymprotein.synonymname }
    assert_redirected_to synonymprotein_path(assigns(:synonymprotein))
  end

  test "should destroy synonymprotein" do
    assert_difference('Synonymprotein.count', -1) do
      delete :destroy, id: @synonymprotein
    end

    assert_redirected_to synonymproteins_path
  end
end
