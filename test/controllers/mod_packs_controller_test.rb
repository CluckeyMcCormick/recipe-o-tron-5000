require 'test_helper'

class ModPacksControllerTest < ActionController::TestCase
  setup do
    @mod_pack = mod_packs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mod_packs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mod_pack" do
    assert_difference('ModPack.count') do
      post :create, mod_pack: { name: @mod_pack.name }
    end

    assert_redirected_to mod_pack_path(assigns(:mod_pack))
  end

  test "should show mod_pack" do
    get :show, id: @mod_pack
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mod_pack
    assert_response :success
  end

  test "should update mod_pack" do
    patch :update, id: @mod_pack, mod_pack: { name: @mod_pack.name }
    assert_redirected_to mod_pack_path(assigns(:mod_pack))
  end

  test "should destroy mod_pack" do
    assert_difference('ModPack.count', -1) do
      delete :destroy, id: @mod_pack
    end

    assert_redirected_to mod_packs_path
  end
end
