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
      post :create, facturacion: { cantidad: @facturacion.cantidad, cliente: @facturacion.cliente, cotizacion: @facturacion.cotizacion, descripcion: @facturacion.descripcion, empresa: @facturacion.empresa, fchven: @facturacion.fchven, fecha: @facturacion.fecha, iva: @facturacion.iva, nit: @facturacion.nit, precio: @facturacion.precio, producto: @facturacion.producto, subtotal: @facturacion.subtotal, telefono: @facturacion.telefono }
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
    patch :update, id: @facturacion, facturacion: { cantidad: @facturacion.cantidad, cliente: @facturacion.cliente, cotizacion: @facturacion.cotizacion, descripcion: @facturacion.descripcion, empresa: @facturacion.empresa, fchven: @facturacion.fchven, fecha: @facturacion.fecha, iva: @facturacion.iva, nit: @facturacion.nit, precio: @facturacion.precio, producto: @facturacion.producto, subtotal: @facturacion.subtotal, telefono: @facturacion.telefono }
    assert_redirected_to facturacion_path(assigns(:facturacion))
  end

  test "should destroy facturacion" do
    assert_difference('Facturacion.count', -1) do
      delete :destroy, id: @facturacion
    end

    assert_redirected_to facturacions_path
  end
end
