require 'test_helper'

class HapsControllerTest < ActionController::TestCase
  setup do
    @hap = haps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:haps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hap" do
    assert_difference('Hap.count') do
      post :create, :hap => @hap.attributes
    end

    assert_redirected_to hap_path(assigns(:hap))
  end

  test "should show hap" do
    get :show, :id => @hap.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @hap.to_param
    assert_response :success
  end

  test "should update hap" do
    put :update, :id => @hap.to_param, :hap => @hap.attributes
    assert_redirected_to hap_path(assigns(:hap))
  end

  test "should destroy hap" do
    assert_difference('Hap.count', -1) do
      delete :destroy, :id => @hap.to_param
    end

    assert_redirected_to haps_path
  end
end
