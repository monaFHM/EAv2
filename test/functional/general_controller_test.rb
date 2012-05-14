require 'test_helper'

class GeneralControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get showroom" do
    get :showroom
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get impressum" do
    get :impressum
    assert_response :success
  end

end
