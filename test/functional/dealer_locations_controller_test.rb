require 'test_helper'

class DealerLocationsControllerTest < ActionController::TestCase
  setup do
    @dealer_location = dealer_locations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dealer_locations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dealer_location" do
    assert_difference('DealerLocation.count') do
      post :create, :dealer_location => @dealer_location.attributes
    end

    assert_redirected_to dealer_location_path(assigns(:dealer_location))
  end

  test "should show dealer_location" do
    get :show, :id => @dealer_location.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @dealer_location.to_param
    assert_response :success
  end

  test "should update dealer_location" do
    put :update, :id => @dealer_location.to_param, :dealer_location => @dealer_location.attributes
    assert_redirected_to dealer_location_path(assigns(:dealer_location))
  end

  test "should destroy dealer_location" do
    assert_difference('DealerLocation.count', -1) do
      delete :destroy, :id => @dealer_location.to_param
    end

    assert_redirected_to dealer_locations_path
  end
end
