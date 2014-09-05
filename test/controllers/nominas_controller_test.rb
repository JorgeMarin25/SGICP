require 'test_helper'

class NominasControllerTest < ActionController::TestCase
  setup do
    @nomina = nominas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nominas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nomina" do
    assert_difference('Nomina.count') do
      post :create, nomina: { nombre: @nomina.nombre }
    end

    assert_redirected_to nomina_path(assigns(:nomina))
  end

  test "should show nomina" do
    get :show, id: @nomina
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nomina
    assert_response :success
  end

  test "should update nomina" do
    patch :update, id: @nomina, nomina: { nombre: @nomina.nombre }
    assert_redirected_to nomina_path(assigns(:nomina))
  end

  test "should destroy nomina" do
    assert_difference('Nomina.count', -1) do
      delete :destroy, id: @nomina
    end

    assert_redirected_to nominas_path
  end
end
