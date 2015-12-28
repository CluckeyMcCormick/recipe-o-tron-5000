require 'test_helper'

class PackSelectorControllerTest < ActionController::TestCase
  test "should get select" do
    get :select
    assert_response :success
  end

  test "should get deselect" do
    get :deselect
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

end
