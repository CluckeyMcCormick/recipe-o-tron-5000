require 'test_helper'

class ProcessTypeInclusionsControllerTest < ActionController::TestCase
  setup do
    @process_type_inclusion = process_type_inclusions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:process_type_inclusions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create process_type_inclusion" do
    assert_difference('ProcessTypeInclusion.count') do
      post :create, process_type_inclusion: { item_class_id: @process_type_inclusion.item_class_id, process_type_id: @process_type_inclusion.process_type_id }
    end

    assert_redirected_to process_type_inclusion_path(assigns(:process_type_inclusion))
  end

  test "should show process_type_inclusion" do
    get :show, id: @process_type_inclusion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @process_type_inclusion
    assert_response :success
  end

  test "should update process_type_inclusion" do
    patch :update, id: @process_type_inclusion, process_type_inclusion: { item_class_id: @process_type_inclusion.item_class_id, process_type_id: @process_type_inclusion.process_type_id }
    assert_redirected_to process_type_inclusion_path(assigns(:process_type_inclusion))
  end

  test "should destroy process_type_inclusion" do
    assert_difference('ProcessTypeInclusion.count', -1) do
      delete :destroy, id: @process_type_inclusion
    end

    assert_redirected_to process_type_inclusions_path
  end
end
