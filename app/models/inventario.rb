class Inventario < ActiveRecord::Base
	def self.search(search, page) where(['upper(productos) like ?', 
	"%#{search}%".upcase]).paginate(page: page, per_page: 5).order("productos") 
	end 
end
