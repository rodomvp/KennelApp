require 'test_helper'

class RunnsControllerTest < ActionController::TestCase
  setup do
    @runn = runns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:runns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create runn" do
    assert_difference('Runn.count') do
      post :create, runn: { amenities: @runn.amenities, ident: @runn.ident, occupied: @runn.occupied, size: @runn.size, ward_id: @runn.ward_id }
    end

    assert_redirected_to runn_path(assigns(:runn))
  end

  test "should show runn" do
    get :show, id: @runn
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @runn
    assert_response :success
  end

  test "should update runn" do
    patch :update, id: @runn, runn: { amenities: @runn.amenities, ident: @runn.ident, occupied: @runn.occupied, size: @runn.size, ward_id: @runn.ward_id }
    assert_redirected_to runn_path(assigns(:runn))
  end

  test "should destroy runn" do
    assert_difference('Runn.count', -1) do
      delete :destroy, id: @runn
    end

    assert_redirected_to runns_path
  end
end
