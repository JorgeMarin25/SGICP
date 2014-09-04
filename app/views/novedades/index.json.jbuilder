json.array!(@novedades) do |novedade|
  json.extract! novedade, :id, :fechavacaciones, :finvacaciones, :cesantias, :primalegal, :primavacaciones, :sueldobasico, :horasextras, :recargosdiurnos, :dominicales, :festivos, :comiciones, :diasnotrabajados, :horasnotrabajadas
  json.url novedade_url(novedade, format: :json)
end
