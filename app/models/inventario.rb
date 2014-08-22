class Inventario < ActiveRecord::Base

	# Validar que los atributos sean obligatorios
	validates :productos, :presence => true
	validates :cantidad, :presence => true
	# Valida si un atributo es numerico
	validates :cantidad, numericality: true

end
