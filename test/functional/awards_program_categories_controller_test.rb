require 'test_helper'

class AwardsProgramCategoriesControllerTest < ActionController::TestCase
  setup do
    @awards_program_category = awards_program_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:awards_program_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create awards_program_category" do
    assert_difference('AwardsProgramCategory.count') do
      post :create, :awards_program_category => @awards_program_category.attributes
    end

    assert_redirected_to awards_program_category_path(assigns(:awards_program_category))
  end

  test "should show awards_program_category" do
    get :show, :id => @awards_program_category.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @awards_program_category.to_param
    assert_response :success
  end

  test "should update awards_program_category" do
    put :update, :id => @awards_program_category.to_param, :awards_program_category => @awards_program_category.attributes
    assert_redirected_to awards_program_category_path(assigns(:awards_program_category))
  end

  test "should destroy awards_program_category" do
    assert_difference('AwardsProgramCategory.count', -1) do
      delete :destroy, :id => @awards_program_category.to_param
    end

    assert_redirected_to awards_program_categories_path
  end
end
