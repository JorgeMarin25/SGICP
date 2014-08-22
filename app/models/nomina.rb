class Nomina < ActiveRecord::Base
  belongs_to :empleado
  # Validar que los atributos sean obligatorios
	validates :empleado_id, :presence => true
	validates :salariobasico, :presence => true
	validates :horasextras, :presence => true
	validates :recargosdiurnos, :presence => true
	validates :recargosnocturnos, :presence => true
	validates :dominicales, :presence => true
	validates :festivos, :presence => true
	validates :comisiones, :presence => true
	validates :diasnotrabajados, :presence => true
	validates :horasnotrabajadas, :presence => true



end
