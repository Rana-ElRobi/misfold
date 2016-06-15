require 'test_helper'

class ExternalsoformsControllerTest < ActionController::TestCase
  setup do
    @externalsoform = externalsoforms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:externalsoforms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create externalsoform" do
    assert_difference('Externalsoform.count') do
      post :create, externalsoform: { url: @externalsoform.url }
    end

    assert_redirected_to externalsoform_path(assigns(:externalsoform))
  end

  test "should show externalsoform" do
    get :show, id: @externalsoform
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @externalsoform
    assert_response :success
  end

  test "should update externalsoform" do
    patch :update, id: @externalsoform, externalsoform: { url: @externalsoform.url }
    assert_redirected_to externalsoform_path(assigns(:externalsoform))
  end

  test "should destroy externalsoform" do
    assert_difference('Externalsoform.count', -1) do
      delete :destroy, id: @externalsoform
    end

    assert_redirected_to externalsoforms_path
  end
end
