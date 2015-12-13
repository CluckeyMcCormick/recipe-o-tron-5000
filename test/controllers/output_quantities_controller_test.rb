require 'test_helper'

class OutputQuantitiesControllerTest < ActionController::TestCase
  setup do
    @output_quantity = output_quantities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:output_quantities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create output_quantity" do
    assert_difference('OutputQuantity.count') do
      post :create, output_quantity: { count: @output_quantity.count, items_id: @output_quantity.items_id, recipes_id: @output_quantity.recipes_id }
    end

    assert_redirected_to output_quantity_path(assigns(:output_quantity))
  end

  test "should show output_quantity" do
    get :show, id: @output_quantity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @output_quantity
    assert_response :success
  end

  test "should update output_quantity" do
    patch :update, id: @output_quantity, output_quantity: { count: @output_quantity.count, items_id: @output_quantity.items_id, recipes_id: @output_quantity.recipes_id }
    assert_redirected_to output_quantity_path(assigns(:output_quantity))
  end

  test "should destroy output_quantity" do
    assert_difference('OutputQuantity.count', -1) do
      delete :destroy, id: @output_quantity
    end

    assert_redirected_to output_quantities_path
  end
end
