json.array!(@cargos) do |cargo|
  json.extract! cargo, :id, :nombre
  json.url cargo_url(cargo, format: :json)
end
