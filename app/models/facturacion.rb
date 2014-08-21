class Facturacion < ActiveRecord::Base
	def self.search(search, page) where(['upper(fecha) like ?', 
		"%#{search}%".upcase]).paginate(page: page, per_page: 5).order("fecha") 
	end 
end
