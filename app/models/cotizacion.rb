class Cotizacion < ActiveRecord::Base
	def self.search(search, page) where(['upper(id) like ?', 
		"%#{search}%".upcase]).paginate(page: page, per_page: 5).order("id") 
	end 
end
