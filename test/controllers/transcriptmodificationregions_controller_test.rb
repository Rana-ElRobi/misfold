require 'test_helper'

class TranscriptmodificationregionsControllerTest < ActionController::TestCase
  setup do
    @transcriptmodificationregion = transcriptmodificationregions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:transcriptmodificationregions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create transcriptmodificationregion" do
    assert_difference('Transcriptmodificationregion.count') do
      post :create, transcriptmodificationregion: { end: @transcriptmodificationregion.end, modification: @transcriptmodificationregion.modification, start: @transcriptmodificationregion.start }
    end

    assert_redirected_to transcriptmodificationregion_path(assigns(:transcriptmodificationregion))
  end

  test "should show transcriptmodificationregion" do
    get :show, id: @transcriptmodificationregion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @transcriptmodificationregion
    assert_response :success
  end

  test "should update transcriptmodificationregion" do
    patch :update, id: @transcriptmodificationregion, transcriptmodificationregion: { end: @transcriptmodificationregion.end, modification: @transcriptmodificationregion.modification, start: @transcriptmodificationregion.start }
    assert_redirected_to transcriptmodificationregion_path(assigns(:transcriptmodificationregion))
  end

  test "should destroy transcriptmodificationregion" do
    assert_difference('Transcriptmodificationregion.count', -1) do
      delete :destroy, id: @transcriptmodificationregion
    end

    assert_redirected_to transcriptmodificationregions_path
  end
end
