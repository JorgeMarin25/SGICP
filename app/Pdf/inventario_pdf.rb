class InventarioPdf < Prawn::Document

	def initialize(inventario)
		super(top_margin: 70)
		@inventario = inventario
		productos
		cantidad
		
	end

	def productos
		text "productos: #{@inventario.productos}", size: 15, style: :bold
	end 

	def cantidad
		text "cantidad: #{@inventario.cantidad}", size: 15, style: :bold
	end 


	


	
end



