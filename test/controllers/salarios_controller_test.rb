require 'test_helper'

class SalariosControllerTest < ActionController::TestCase
  setup do
    @salario = salarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:salarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create salario" do
    assert_difference('Salario.count') do
      post :create, salario: { nombre: @salario.nombre }
    end

    assert_redirected_to salario_path(assigns(:salario))
  end

  test "should show salario" do
    get :show, id: @salario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @salario
    assert_response :success
  end

  test "should update salario" do
    patch :update, id: @salario, salario: { nombre: @salario.nombre }
    assert_redirected_to salario_path(assigns(:salario))
  end

  test "should destroy salario" do
    assert_difference('Salario.count', -1) do
      delete :destroy, id: @salario
    end

    assert_redirected_to salarios_path
  end
end
