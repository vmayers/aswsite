require 'test_helper'

class BapsControllerTest < ActionController::TestCase
  setup do
    @bap = baps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:baps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bap" do
    assert_difference('Bap.count') do
      post :create, :bap => @bap.attributes
    end

    assert_redirected_to bap_path(assigns(:bap))
  end

  test "should show bap" do
    get :show, :id => @bap.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @bap.to_param
    assert_response :success
  end

  test "should update bap" do
    put :update, :id => @bap.to_param, :bap => @bap.attributes
    assert_redirected_to bap_path(assigns(:bap))
  end

  test "should destroy bap" do
    assert_difference('Bap.count', -1) do
      delete :destroy, :id => @bap.to_param
    end

    assert_redirected_to baps_path
  end
end
