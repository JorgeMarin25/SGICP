json.array!(@novedades) do |novedade|
  json.extract! novedade, :id, :iniciovacaciones, :finvacaciones, :prendasrealizadas, :valorprenda, :sueldobasico, :primalegal, :festivostrabajados, :diasnotrabajados, :horasnotrabajadas
  json.url novedade_url(novedade, format: :json)
end
