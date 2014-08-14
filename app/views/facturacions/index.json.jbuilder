json.array!(@facturacions) do |facturacion|
  json.extract! facturacion, :id, :fecha, :fchven, :cotizacion, :cliente, :telefono, :empresa, :nit, :producto, :descripcion, :cantidad, :precio, :iva, :subtotal
  json.url facturacion_url(facturacion, format: :json)
end
