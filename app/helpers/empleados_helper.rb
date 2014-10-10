module EmpleadosHelper
	def mostrar_genero(genero)
     if genero 
		"Masculino"
		else
		"Femenino"
     end
end
	
	def mostrar_estado(estado) 
	     if estado
			"<p class='label label-success'>HABILITADO</p>".html_safe 
			else 
			"<p class='label label-danger'>INABILITADO</p>".html_safe 
	     end 
    end 

   	

end
