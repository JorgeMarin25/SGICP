class CotizacionPdf < Prawn::Document

	def initialize(cotizacion)
		super(top_margin: 70)
		@cotizacion = cotizacion

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
		total
		estado
      
	end


	def cliente
		text "Cliente: #{@cotizacion.cliente}", size: 15, style: :bold
	end

	def telefono
		text "Telefono: #{@cotizacion.telefono}", size: 15, style: :bold
	end

	def empresa
		text "Empresa: #{@cotizacion.empresa}", size: 15, style: :bold
	end

	def nit
		text "Nit: #{@cotizacion.nit}", size: 15, style: :bold
	end

	def producto
		text "Producto: #{@cotizacion.producto}", size: 15, style: :bold
	end

	def descripcion
		text "Descripcion: #{@cotizacion.descripcion}", size: 15, style: :bold
	end

	def cantidad
		text "Cantidad: #{@cotizacion.cantidad}", size: 15, style: :bold
	end

	def precio
		text "Precio: #{@cotizacion.precio}", size: 15, style: :bold
	end

	def iva
		text "Iva: #{@cotizacion.iva}", size: 15, style: :bold
	end

	def subtotal
		text "Subtotal: #{@cotizacion.subtotal}", size: 15, style: :bold
	end

	def total
		text "Total: #{@cotizacion.total}", size: 15, style: :bold
	end

	def estado
		text "Estado: #{@cotizacion.estado}", size: 15, style: :bold
	end

	
	
end



