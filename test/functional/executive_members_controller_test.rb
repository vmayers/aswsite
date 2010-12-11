require 'test_helper'

class ExecutiveMembersControllerTest < ActionController::TestCase
  setup do
    @executive_member = executive_members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:executive_members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create executive_member" do
    assert_difference('ExecutiveMember.count') do
      post :create, :executive_member => @executive_member.attributes
    end

    assert_redirected_to executive_member_path(assigns(:executive_member))
  end

  test "should show executive_member" do
    get :show, :id => @executive_member.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @executive_member.to_param
    assert_response :success
  end

  test "should update executive_member" do
    put :update, :id => @executive_member.to_param, :executive_member => @executive_member.attributes
    assert_redirected_to executive_member_path(assigns(:executive_member))
  end

  test "should destroy executive_member" do
    assert_difference('ExecutiveMember.count', -1) do
      delete :destroy, :id => @executive_member.to_param
    end

    assert_redirected_to executive_members_path
  end
end
