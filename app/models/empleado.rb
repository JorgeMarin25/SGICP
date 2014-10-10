class Empleado < ActiveRecord::Base
	has_many :novedades

  belongs_to :estado
  belongs_to :nomina 
  belongs_to :cargo

  

  # Validar que los atributos sean obligatorios
	validates :nombre, :presence => true
	validates :estado_id, :presence => true
	validates :direccion, :presence => true
	validates :barrio, :presence => true
	validates :ciudad, :presence => true
	validates :celular, :presence => true
	validates :correo, :presence => true
	validates :fchinicio, :presence => true
	validates :fchfinal, :presence => true
	validates :ref, :presence => true
	validates :telref, :presence => true
	# validar que un atributos unicos
	validates :doc, uniqueness: { message: "Ya Existe" }
	validates :correo, uniqueness: { message: "No se puede Repetir" }
	validates :telefono, numericality: { message: "Debe ser solo Numeros" }
	validates :celular, numericality: { message: "Debe ser solo Numeros" }
	# validar formato de un correo
	validates :correo, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i,
	message: 'Formato no valido' }
			
	 	
def self.search(search, page)
	where(['upper(nombre) like ?',
	"%#{search}%".upcase]).paginate(page: page, per_page: 5).order("nombre")
 end

end
