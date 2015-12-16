require 'test_helper'

class RecipeInclusionsControllerTest < ActionController::TestCase
  setup do
    @recipe_inclusion = recipe_inclusions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recipe_inclusions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recipe_inclusion" do
    assert_difference('RecipeInclusion.count') do
      post :create, recipe_inclusion: { process_type_id: @recipe_inclusion.process_type_id, recipe_id: @recipe_inclusion.recipe_id }
    end

    assert_redirected_to recipe_inclusion_path(assigns(:recipe_inclusion))
  end

  test "should show recipe_inclusion" do
    get :show, id: @recipe_inclusion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recipe_inclusion
    assert_response :success
  end

  test "should update recipe_inclusion" do
    patch :update, id: @recipe_inclusion, recipe_inclusion: { process_type_id: @recipe_inclusion.process_type_id, recipe_id: @recipe_inclusion.recipe_id }
    assert_redirected_to recipe_inclusion_path(assigns(:recipe_inclusion))
  end

  test "should destroy recipe_inclusion" do
    assert_difference('RecipeInclusion.count', -1) do
      delete :destroy, id: @recipe_inclusion
    end

    assert_redirected_to recipe_inclusions_path
  end
end
