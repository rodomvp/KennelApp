require 'test_helper'

class WardViewsControllerTest < ActionController::TestCase
  setup do
    @ward_view = ward_views(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ward_views)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ward_view" do
    assert_difference('WardView.count') do
      post :create, ward_view: {  }
    end

    assert_redirected_to ward_view_path(assigns(:ward_view))
  end

  test "should show ward_view" do
    get :show, id: @ward_view
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ward_view
    assert_response :success
  end

  test "should update ward_view" do
    patch :update, id: @ward_view, ward_view: {  }
    assert_redirected_to ward_view_path(assigns(:ward_view))
  end

  test "should destroy ward_view" do
    assert_difference('WardView.count', -1) do
      delete :destroy, id: @ward_view
    end

    assert_redirected_to ward_views_path
  end
end
