class Empleado < ActiveRecord::Base
  belongs_to :estado

def self.search(search, page)
	where(['upper(nombre) like ?',
	"%#{search}%".upcase]).paginate(page: page, per_page: 5).order("nombre")
 end

end
