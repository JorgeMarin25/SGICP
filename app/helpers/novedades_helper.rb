module NovedadesHelper
 def sumas(prendasrealizadas, valorprenda) 
 	prendasrealizadas * valorprenda.to_i 
 end

 def mostrar_estado(estado) 
	     if estado
			"<p class='label label-success'>HABILITADO</p>".html_safe 
			else 
			"<p class='label label-danger'>INABILITADO</p>".html_safe 
	     end 
    end 

    
    def estado(estado) 
	     if estado
			"<p class='label label-success'>HABILITADO</p>".html_safe 
			else 
			"<p class='label label-danger'>INABILITADO</p>".html_safe 
	     end 
    end  


end