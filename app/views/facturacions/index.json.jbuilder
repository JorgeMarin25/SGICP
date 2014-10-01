json.array!(@facturacions) do |facturacion|
  json.extract! facturacion, :id, :fecha_facturacion, :fecha_vencimiento, :cliente_id, :cotizacion_id, :estado, :iva, :total
  json.url facturacion_url(facturacion, format: :json)
end
