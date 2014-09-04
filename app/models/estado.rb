class Estado < ActiveRecord::Base

	

	# Validar que los atributos sean obligatorios
	validates :name, :presence => true

end
