json.array!(@cotizacions) do |cotizacion|
  json.extract! cotizacion, :id, :cliente, :telefono, :empresa, :nit, :producto, :descripcion, :cantidad, :precio, :iva, :subtotal, :total, :estado
  json.url cotizacion_url(cotizacion, format: :json)
end
