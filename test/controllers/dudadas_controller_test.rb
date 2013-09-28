require 'test_helper'

class DudadasControllerTest < ActionController::TestCase
  setup do
    @dudada = dudadas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dudadas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dudada" do
    assert_difference('Dudada.count') do
      post :create, dudada: { aaa: @dudada.aaa }
    end

    assert_redirected_to dudada_path(assigns(:dudada))
  end

  test "should show dudada" do
    get :show, id: @dudada
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dudada
    assert_response :success
  end

  test "should update dudada" do
    patch :update, id: @dudada, dudada: { aaa: @dudada.aaa }
    assert_redirected_to dudada_path(assigns(:dudada))
  end

  test "should destroy dudada" do
    assert_difference('Dudada.count', -1) do
      delete :destroy, id: @dudada
    end

    assert_redirected_to dudadas_path
  end
end
