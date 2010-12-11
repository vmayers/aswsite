require 'test_helper'

class AwardsProgramSpeciesControllerTest < ActionController::TestCase
  setup do
    @awards_program_species = awards_program_species(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:awards_program_species)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create awards_program_species" do
    assert_difference('AwardsProgramSpecies.count') do
      post :create, :awards_program_species => @awards_program_species.attributes
    end

    assert_redirected_to awards_program_species_path(assigns(:awards_program_species))
  end

  test "should show awards_program_species" do
    get :show, :id => @awards_program_species.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @awards_program_species.to_param
    assert_response :success
  end

  test "should update awards_program_species" do
    put :update, :id => @awards_program_species.to_param, :awards_program_species => @awards_program_species.attributes
    assert_redirected_to awards_program_species_path(assigns(:awards_program_species))
  end

  test "should destroy awards_program_species" do
    assert_difference('AwardsProgramSpecies.count', -1) do
      delete :destroy, :id => @awards_program_species.to_param
    end

    assert_redirected_to awards_program_species_index_path
  end
end
