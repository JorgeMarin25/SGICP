class Inventario < ActiveRecord::Base
def self.search(search, page) where(['upper(productos) like ?', 
	"%#{search}%".upcase]).paginate(page: page, per_page: 5).order("productos") 
	end 
	# Validar que los atributos sean obligatorios
	validates :productos, :presence => true
	validates :cantidad, :presence => true
	# Valida si un atributo es numerico
	validates :cantidad, numericality: true

end
