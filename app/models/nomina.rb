class Nomina < ActiveRecord::Base

  belongs_to :empleado
  belongs_to :salario 
  has_many :empleado   


def self.search(search, page) where(['upper(empleado_id) like ?', 
     "%#{search}%".upcase]).paginate(page: page, per_page: 5).order("empleado_id") 
  end 




  # Validar que los atributos sean obligatorios
	validates :empleado_id, :presence => true
	validates :horasextras, :presence => true
	validates :recargosdiurnos, :presence => true
	validates :recargosnocturnos, :presence => true
	validates :dominicales, :presence => true
	validates :festivos, :presence => true
	validates :comisiones, :presence => true
	validates :diasnotrabajados, :presence => true
	validates :horasnotrabajadas, :presence => true


validates :empleado, uniqueness: { message: "ya existe elija otro"}
has_attached_file :image, :styles => { :medium => "200x200>" , :thumb => "40x50>" }, :default_url => "/images/:style/foto.png" 
validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end


