require 'test_helper'

class InputQuantitiesControllerTest < ActionController::TestCase
  setup do
    @input_quantity = input_quantities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:input_quantities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create input_quantity" do
    assert_difference('InputQuantity.count') do
      post :create, input_quantity: { count: @input_quantity.count, item_id: @input_quantity.item_id, recipe_id: @input_quantity.recipe_id }
    end

    assert_redirected_to input_quantity_path(assigns(:input_quantity))
  end

  test "should show input_quantity" do
    get :show, id: @input_quantity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @input_quantity
    assert_response :success
  end

  test "should update input_quantity" do
    patch :update, id: @input_quantity, input_quantity: { count: @input_quantity.count, item_id: @input_quantity.item_id, recipe_id: @input_quantity.recipe_id }
    assert_redirected_to input_quantity_path(assigns(:input_quantity))
  end

  test "should destroy input_quantity" do
    assert_difference('InputQuantity.count', -1) do
      delete :destroy, id: @input_quantity
    end

    assert_redirected_to input_quantities_path
  end
end
