require 'test_helper'

class DiseaseontologiesControllerTest < ActionController::TestCase
  setup do
    @diseaseontology = diseaseontologies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:diseaseontologies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create diseaseontology" do
    assert_difference('Diseaseontology.count') do
      post :create, diseaseontology: { alt_id: @diseaseontology.alt_id, created_by: @diseaseontology.created_by, creation_date: @diseaseontology.creation_date, definition: @diseaseontology.definition, doid: @diseaseontology.doid, name: @diseaseontology.name, subset: @diseaseontology.subset, synonym: @diseaseontology.synonym, url: @diseaseontology.url, xref: @diseaseontology.xref }
    end

    assert_redirected_to diseaseontology_path(assigns(:diseaseontology))
  end

  test "should show diseaseontology" do
    get :show, id: @diseaseontology
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @diseaseontology
    assert_response :success
  end

  test "should update diseaseontology" do
    patch :update, id: @diseaseontology, diseaseontology: { alt_id: @diseaseontology.alt_id, created_by: @diseaseontology.created_by, creation_date: @diseaseontology.creation_date, definition: @diseaseontology.definition, doid: @diseaseontology.doid, name: @diseaseontology.name, subset: @diseaseontology.subset, synonym: @diseaseontology.synonym, url: @diseaseontology.url, xref: @diseaseontology.xref }
    assert_redirected_to diseaseontology_path(assigns(:diseaseontology))
  end

  test "should destroy diseaseontology" do
    assert_difference('Diseaseontology.count', -1) do
      delete :destroy, id: @diseaseontology
    end

    assert_redirected_to diseaseontologies_path
  end
end
