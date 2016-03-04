require 'test_helper'

class FirstModelsControllerTest < ActionController::TestCase
  setup do
    @first_model = first_models(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:first_models)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create first_model" do
    assert_difference('FirstModel.count') do
      post :create, first_model: { url: @first_model.url }
    end

    assert_redirected_to first_model_path(assigns(:first_model))
  end

  test "should show first_model" do
    get :show, id: @first_model
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @first_model
    assert_response :success
  end

  test "should update first_model" do
    patch :update, id: @first_model, first_model: { url: @first_model.url }
    assert_redirected_to first_model_path(assigns(:first_model))
  end

  test "should destroy first_model" do
    assert_difference('FirstModel.count', -1) do
      delete :destroy, id: @first_model
    end

    assert_redirected_to first_models_path
  end
end
