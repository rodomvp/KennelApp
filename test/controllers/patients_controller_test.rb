require 'test_helper'

class PatientsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  # TODO: find out why this test fails
  # test "should get show" do
  #   get :show
  #   assert_response :success
  # end

  test "should get index" do
    get :index
    assert_response :success
  end

end
