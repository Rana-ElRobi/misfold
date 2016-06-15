require 'test_helper'

class ProteinontologiesControllerTest < ActionController::TestCase
  setup do
    @proteinontology = proteinontologies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:proteinontologies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create proteinontology" do
    assert_difference('Proteinontology.count') do
      post :create, proteinontology: { comment: @proteinontology.comment, definition: @proteinontology.definition, is_obsolete: @proteinontology.is_obsolete, name: @proteinontology.name, namespace: @proteinontology.namespace, prid: @proteinontology.prid, synonym: @proteinontology.synonym, xref: @proteinontology.xref }
    end

    assert_redirected_to proteinontology_path(assigns(:proteinontology))
  end

  test "should show proteinontology" do
    get :show, id: @proteinontology
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @proteinontology
    assert_response :success
  end

  test "should update proteinontology" do
    patch :update, id: @proteinontology, proteinontology: { comment: @proteinontology.comment, definition: @proteinontology.definition, is_obsolete: @proteinontology.is_obsolete, name: @proteinontology.name, namespace: @proteinontology.namespace, prid: @proteinontology.prid, synonym: @proteinontology.synonym, xref: @proteinontology.xref }
    assert_redirected_to proteinontology_path(assigns(:proteinontology))
  end

  test "should destroy proteinontology" do
    assert_difference('Proteinontology.count', -1) do
      delete :destroy, id: @proteinontology
    end

    assert_redirected_to proteinontologies_path
  end
end
