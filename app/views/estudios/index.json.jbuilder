json.array!(@estudios) do |estudio|
  json.extract! estudio, :id, :nombre, :descripcion, :fecha, :lugar, :empleado_id
  json.url estudio_url(estudio, format: :json)
end
