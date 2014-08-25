json.array!(@salarios) do |salario|
  json.extract! salario, :id, :nombre
  json.url salario_url(salario, format: :json)
end
