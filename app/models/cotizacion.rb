class Cotizacion < ActiveRecord::Base

	belongs_to :cliente
	has_many :facturacions


	# Validar que los atributos sean obligatorios
	validates :cliente_id, :presence => true
	validates :producto, :presence => true
	validates :descripcion, :presence => true
	validates :cantidad, :presence => true
	validates :precio, :presence => true
	validates :iva, :presence => true
	validates :subtotal, :presence => true
	validates :total, :presence => true
	validates :estado, :presence => true
	

	def self.search(search, page) where(['upper(id) like ?', 
		"%#{search}%".upcase]).paginate(page: page, per_page: 5).order("id") 
	end 
	
	

end
