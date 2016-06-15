require 'test_helper'

class SiseasclassesControllerTest < ActionController::TestCase
  setup do
    @siseasclass = siseasclasses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:siseasclasses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create siseasclass" do
    assert_difference('Siseasclass.count') do
      post :create, siseasclass: { diseasclass: @siseasclass.diseasclass }
    end

    assert_redirected_to siseasclass_path(assigns(:siseasclass))
  end

  test "should show siseasclass" do
    get :show, id: @siseasclass
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @siseasclass
    assert_response :success
  end

  test "should update siseasclass" do
    patch :update, id: @siseasclass, siseasclass: { diseasclass: @siseasclass.diseasclass }
    assert_redirected_to siseasclass_path(assigns(:siseasclass))
  end

  test "should destroy siseasclass" do
    assert_difference('Siseasclass.count', -1) do
      delete :destroy, id: @siseasclass
    end

    assert_redirected_to siseasclasses_path
  end
end
