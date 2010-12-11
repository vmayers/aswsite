require 'test_helper'

class ExecutivePositionsControllerTest < ActionController::TestCase
  setup do
    @executive_position = executive_positions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:executive_positions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create executive_position" do
    assert_difference('ExecutivePosition.count') do
      post :create, :executive_position => @executive_position.attributes
    end

    assert_redirected_to executive_position_path(assigns(:executive_position))
  end

  test "should show executive_position" do
    get :show, :id => @executive_position.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @executive_position.to_param
    assert_response :success
  end

  test "should update executive_position" do
    put :update, :id => @executive_position.to_param, :executive_position => @executive_position.attributes
    assert_redirected_to executive_position_path(assigns(:executive_position))
  end

  test "should destroy executive_position" do
    assert_difference('ExecutivePosition.count', -1) do
      delete :destroy, :id => @executive_position.to_param
    end

    assert_redirected_to executive_positions_path
  end
end
