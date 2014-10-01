require 'test_helper'

class FacturacionsControllerTest < ActionController::TestCase
  setup do
    @facturacion = facturacions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:facturacions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create facturacion" do
    assert_difference('Facturacion.count') do
      post :create, facturacion: { cliente_id: @facturacion.cliente_id, cotizacion_id: @facturacion.cotizacion_id, estado: @facturacion.estado, fecha_facturacion: @facturacion.fecha_facturacion, fecha_vencimiento: @facturacion.fecha_vencimiento, iva: @facturacion.iva, total: @facturacion.total }
    end

    assert_redirected_to facturacion_path(assigns(:facturacion))
  end

  test "should show facturacion" do
    get :show, id: @facturacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @facturacion
    assert_response :success
  end

  test "should update facturacion" do
    patch :update, id: @facturacion, facturacion: { cliente_id: @facturacion.cliente_id, cotizacion_id: @facturacion.cotizacion_id, estado: @facturacion.estado, fecha_facturacion: @facturacion.fecha_facturacion, fecha_vencimiento: @facturacion.fecha_vencimiento, iva: @facturacion.iva, total: @facturacion.total }
    assert_redirected_to facturacion_path(assigns(:facturacion))
  end

  test "should destroy facturacion" do
    assert_difference('Facturacion.count', -1) do
      delete :destroy, id: @facturacion
    end

    assert_redirected_to facturacions_path
  end
end
