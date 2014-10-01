class Facturacion < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :cotizacion
end
