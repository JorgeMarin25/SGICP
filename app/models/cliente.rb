class Cliente < ActiveRecord::Base


# Validar que los atributos sean obligatorios
validates :nombre, :presence => true
validates :empresa, :presence => true
validates :nit, :presence => true
validates :direccion, :presence => true
validates :ciudad, :presence => true
validates :telefono, :presence => true
validates :correo, :presence => true
# validar que un atributos unicos
validates :empresa, uniqueness: { message: "No se puede Repetir" }
validates :empresa, uniqueness: { message: "No se puede Repetir" }
# validar formato de un correo
validates :correo, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i,
message: 'Formato no valido' }
# valida la longitud de un campo, tanto la longitud minima como la maxima
validates :nombre, length: { minimum: 5, maximum: 50 }

	def self.search(search, page)
		where(['upper(nombre) like ?',
		"%#{search}%".upcase]).paginate(page: page, per_page: 5).order("nombre")
	end

end
