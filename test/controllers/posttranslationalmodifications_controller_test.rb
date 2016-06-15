require 'test_helper'

class PosttranslationalmodificationsControllerTest < ActionController::TestCase
  setup do
    @posttranslationalmodification = posttranslationalmodifications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:posttranslationalmodifications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create posttranslationalmodification" do
    assert_difference('Posttranslationalmodification.count') do
      post :create, posttranslationalmodification: { description: @posttranslationalmodification.description, featurekey: @posttranslationalmodification.featurekey, keywords: @posttranslationalmodification.keywords, lenght: @posttranslationalmodification.lenght, position: @posttranslationalmodification.position }
    end

    assert_redirected_to posttranslationalmodification_path(assigns(:posttranslationalmodification))
  end

  test "should show posttranslationalmodification" do
    get :show, id: @posttranslationalmodification
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @posttranslationalmodification
    assert_response :success
  end

  test "should update posttranslationalmodification" do
    patch :update, id: @posttranslationalmodification, posttranslationalmodification: { description: @posttranslationalmodification.description, featurekey: @posttranslationalmodification.featurekey, keywords: @posttranslationalmodification.keywords, lenght: @posttranslationalmodification.lenght, position: @posttranslationalmodification.position }
    assert_redirected_to posttranslationalmodification_path(assigns(:posttranslationalmodification))
  end

  test "should destroy posttranslationalmodification" do
    assert_difference('Posttranslationalmodification.count', -1) do
      delete :destroy, id: @posttranslationalmodification
    end

    assert_redirected_to posttranslationalmodifications_path
  end
end
