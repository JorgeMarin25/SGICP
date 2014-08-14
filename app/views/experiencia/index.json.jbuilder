json.array!(@experiencia) do |experiencium|
  json.extract! experiencium, :id, :lugar, :cargo, :jefe, :tel, :fchini, :fchfin, :motivo, :empleado_id
  json.url experiencium_url(experiencium, format: :json)
end
