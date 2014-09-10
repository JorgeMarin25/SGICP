class Facturacion < ActiveRecord::Base


belongs_to :cotizacion  

	def self.search(search, page) where(['id = ?', 
		"%#{search}%"]).paginate(page: page, per_page: 5).order("id") 
	end 

	# Validar que los atributos sean obligatorios
	validates :fecha, :presence => true
	validates :fchven, :presence => true
	validates :cotizacion_id, :presence => true
	validates :cliente_id, :presence => true
	validates :telefono, :presence => true
	validates :empresa , :presence => true
	validates :nit, :presence => true
	validates :producto, :presence => true
	validates :descripcion, :presence => true
	validates :cantidad, :presence => true
	validates :precio, :presence => true
	validates :iva, :presence => true
	validates :subtotal, :presence => true
	# Valida si un atributo es numerico
	validates :cantidad, numericality: true



end
