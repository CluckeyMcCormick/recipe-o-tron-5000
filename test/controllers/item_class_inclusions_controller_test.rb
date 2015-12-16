require 'test_helper'

class ItemClassInclusionsControllerTest < ActionController::TestCase
  setup do
    @item_class_inclusion = item_class_inclusions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:item_class_inclusions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create item_class_inclusion" do
    assert_difference('ItemClassInclusion.count') do
      post :create, item_class_inclusion: { item_class_id: @item_class_inclusion.item_class_id, item_id: @item_class_inclusion.item_id }
    end

    assert_redirected_to item_class_inclusion_path(assigns(:item_class_inclusion))
  end

  test "should show item_class_inclusion" do
    get :show, id: @item_class_inclusion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @item_class_inclusion
    assert_response :success
  end

  test "should update item_class_inclusion" do
    patch :update, id: @item_class_inclusion, item_class_inclusion: { item_class_id: @item_class_inclusion.item_class_id, item_id: @item_class_inclusion.item_id }
    assert_redirected_to item_class_inclusion_path(assigns(:item_class_inclusion))
  end

  test "should destroy item_class_inclusion" do
    assert_difference('ItemClassInclusion.count', -1) do
      delete :destroy, id: @item_class_inclusion
    end

    assert_redirected_to item_class_inclusions_path
  end
end
