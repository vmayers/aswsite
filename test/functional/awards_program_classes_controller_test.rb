require 'test_helper'

class AwardsProgramClassesControllerTest < ActionController::TestCase
  setup do
    @awards_program_class = awards_program_classes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:awards_program_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create awards_program_class" do
    assert_difference('AwardsProgramClass.count') do
      post :create, :awards_program_class => @awards_program_class.attributes
    end

    assert_redirected_to awards_program_class_path(assigns(:awards_program_class))
  end

  test "should show awards_program_class" do
    get :show, :id => @awards_program_class.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @awards_program_class.to_param
    assert_response :success
  end

  test "should update awards_program_class" do
    put :update, :id => @awards_program_class.to_param, :awards_program_class => @awards_program_class.attributes
    assert_redirected_to awards_program_class_path(assigns(:awards_program_class))
  end

  test "should destroy awards_program_class" do
    assert_difference('AwardsProgramClass.count', -1) do
      delete :destroy, :id => @awards_program_class.to_param
    end

    assert_redirected_to awards_program_classes_path
  end
end
