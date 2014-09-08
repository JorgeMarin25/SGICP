require 'test_helper'

class NovedadesControllerTest < ActionController::TestCase
  setup do
    @novedade = novedades(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:novedades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create novedade" do
    assert_difference('Novedade.count') do
      post :create, novedade: { diasnotrabajados: @novedade.diasnotrabajados, festivostrabajados: @novedade.festivostrabajados, finvacaciones: @novedade.finvacaciones, horasnotrabajadas: @novedade.horasnotrabajadas, iniciovacaciones: @novedade.iniciovacaciones, prendasrealizadas: @novedade.prendasrealizadas, primalegal: @novedade.primalegal, sueldobasico: @novedade.sueldobasico, valorprenda: @novedade.valorprenda }
    end

    assert_redirected_to novedade_path(assigns(:novedade))
  end

  test "should show novedade" do
    get :show, id: @novedade
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @novedade
    assert_response :success
  end

  test "should update novedade" do
    patch :update, id: @novedade, novedade: { diasnotrabajados: @novedade.diasnotrabajados, festivostrabajados: @novedade.festivostrabajados, finvacaciones: @novedade.finvacaciones, horasnotrabajadas: @novedade.horasnotrabajadas, iniciovacaciones: @novedade.iniciovacaciones, prendasrealizadas: @novedade.prendasrealizadas, primalegal: @novedade.primalegal, sueldobasico: @novedade.sueldobasico, valorprenda: @novedade.valorprenda }
    assert_redirected_to novedade_path(assigns(:novedade))
  end

  test "should destroy novedade" do
    assert_difference('Novedade.count', -1) do
      delete :destroy, id: @novedade
    end

    assert_redirected_to novedades_path
  end
end
