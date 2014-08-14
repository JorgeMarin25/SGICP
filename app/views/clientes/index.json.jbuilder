json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nombre, :empresa, :nit, :direccion, :ciudad, :telefono, :correo
  json.url cliente_url(cliente, format: :json)
end
