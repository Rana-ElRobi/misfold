require 'test_helper'

class MisfoldmodlesControllerTest < ActionController::TestCase
  setup do
    @misfoldmodle = misfoldmodles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:misfoldmodles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create misfoldmodle" do
    assert_difference('Misfoldmodle.count') do
      post :create, misfoldmodle: { aminoacidechange: @misfoldmodle.aminoacidechange, id: @misfoldmodle.id, molecularconsequence: @misfoldmodle.molecularconsequence, nuclutidechange: @misfoldmodle.nuclutidechange, refseqm: @misfoldmodle.refseqm, refseqp: @misfoldmodle.refseqp, type: @misfoldmodle.type }
    end

    assert_redirected_to misfoldmodle_path(assigns(:misfoldmodle))
  end

  test "should show misfoldmodle" do
    get :show, id: @misfoldmodle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @misfoldmodle
    assert_response :success
  end

  test "should update misfoldmodle" do
    patch :update, id: @misfoldmodle, misfoldmodle: { aminoacidechange: @misfoldmodle.aminoacidechange, id: @misfoldmodle.id, molecularconsequence: @misfoldmodle.molecularconsequence, nuclutidechange: @misfoldmodle.nuclutidechange, refseqm: @misfoldmodle.refseqm, refseqp: @misfoldmodle.refseqp, type: @misfoldmodle.type }
    assert_redirected_to misfoldmodle_path(assigns(:misfoldmodle))
  end

  test "should destroy misfoldmodle" do
    assert_difference('Misfoldmodle.count', -1) do
      delete :destroy, id: @misfoldmodle
    end

    assert_redirected_to misfoldmodles_path
  end
end
