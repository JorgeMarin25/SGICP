module EmpleadosHelper
	def mostrar_genero(genero)
     if genero 
		"Masculino"
		else
		"Femenino"
     end
end
	
	def mostrar_estado(laborando) 
	     if laborando
			"<p class='label label-success'>Activo</p>".html_safe 
			else 
			"<p class='label label-danger'>Inactivo</p>".html_safe 
	     end 
    end 


end
