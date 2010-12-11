require 'test_helper'

class LibrarybooksControllerTest < ActionController::TestCase
  setup do
    @librarybook = librarybooks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:librarybooks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create librarybook" do
    assert_difference('Librarybook.count') do
      post :create, :librarybook => @librarybook.attributes
    end

    assert_redirected_to librarybook_path(assigns(:librarybook))
  end

  test "should show librarybook" do
    get :show, :id => @librarybook.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @librarybook.to_param
    assert_response :success
  end

  test "should update librarybook" do
    put :update, :id => @librarybook.to_param, :librarybook => @librarybook.attributes
    assert_redirected_to librarybook_path(assigns(:librarybook))
  end

  test "should destroy librarybook" do
    assert_difference('Librarybook.count', -1) do
      delete :destroy, :id => @librarybook.to_param
    end

    assert_redirected_to librarybooks_path
  end
end
