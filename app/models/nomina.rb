class Nomina < ActiveRecord::Base
  belongs_to :empleado
  def self.search(search, page) where(['upper(empleado_id) like ?', 
     "%#{search}%".upcase]).paginate(page: page, per_page: 5).order("empleado_id") 
  end 
end
