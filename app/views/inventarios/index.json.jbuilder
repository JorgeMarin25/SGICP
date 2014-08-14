json.array!(@inventarios) do |inventario|
  json.extract! inventario, :id, :productos, :cantidad
  json.url inventario_url(inventario, format: :json)
end
