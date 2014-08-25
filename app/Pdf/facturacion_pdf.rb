class FacturacionPdf < Prawn::Document

	def initialize(facturacion)
		super(top_margin: 70)
		@facturacion = facturacion
		fecha
		fchven
		cotizacion
		cliente
		telefono
		empresa
		nit 
		producto
		descripcion
		cantidad
		precio
		iva
		subtotal
	end

	def fecha
		text "fecha: #{@facturacion.fecha}", size: 15, style: :bold
	end 

	def fchven
		text "fchven #{@facturacion.fchven}", size: 15, style: :bold
	end 
	
	def cotizacion
		text "cotizacion #{@facturacion.cotizacion}", size: 15, style: :bold
	end 

	def cliente
		text "cliente #{@facturacion.cliente}", size: 15, style: :bold
	end 

	def telefono
		text "telefono #{@facturacion.telefono}", size: 15, style: :bold
	end 

	def empresa
		text "empresa #{@facturacion.empresa}", size: 15, style: :bold
	end 

	def nit 
		text "nit  #{@facturacion.nit }", size: 15, style: :bold
	end 

	def producto 
		text "producto  #{@facturacion.producto }", size: 15, style: :bold
	end

	def descripcion 
		text "descripcion  #{@facturacion.descripcion }", size: 15, style: :bold
	end

	def cantidad
		text "cantidad  #{@facturacion.cantidad }", size: 15, style: :bold
	end

	def precio 
		text "precio  #{@facturacion.precio }", size: 15, style: :bold
	end

	def iva 
		text "iva  #{@facturacion.iva }", size: 15, style: :bold
	end

	def subtotal
		text "subtotal  #{@facturacion.subtotal }", size: 15, style: :bold
	end

	


	
end



