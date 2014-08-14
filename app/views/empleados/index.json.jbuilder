json.array!(@empleados) do |empleado|
  json.extract! empleado, :id, :nombre, :doc, :estado_id, :direccion, :barrio, :ciudad, :telefono, :celular, :correo, :genero, :fchinicio, :fchfinal, :cargo, :ref, :telref
  json.url empleado_url(empleado, format: :json)
end
