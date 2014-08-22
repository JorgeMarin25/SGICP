class Experiencium < ActiveRecord::Base
  belongs_to :empleado
  # Validar que los atributos sean obligatorios
	validates :lugar, :presence => true
	validates :cargo, :presence => true
	validates :jefe, :presence => true
	validates :tel, :presence => true
	validates :fchini, :presence => true
	validates :fchfin, :presence => true
	validates :motivo, :presence => true
	validates :empleado_id, :presence => true



end
