json.array!(@nominas) do |nomina|
  json.extract! nomina, :id, :nombre
  json.url nomina_url(nomina, format: :json)
end
