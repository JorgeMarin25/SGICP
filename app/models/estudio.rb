class Estudio < ActiveRecord::Base
  belongs_to :empleado

  # Validar que los atributos sean obligatorios
	validates :nombre, :presence => true
	validates :descripcion, :presence => true
	validates :fecha, :presence => true
	validates :lugar, :presence => true
	validates :empleado_id, :presence => true
	# valida la longitud de un campo, tanto la longitud minima como la maxima
	validates :nombre, length: { minimum: 5, maximum: 50 }


end
