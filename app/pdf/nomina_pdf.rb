class NominaPdf < Prawn::Document  
 def initialize(nomina)
    super(top_margin: 70)
    @nomina = nomina
    empleado
    sa
    horasextras
    recargosdiurnos
    recargosnocturnos
    dominicales
    festivos
    comisiones
    diasnotrabajados
    horasnotrabajadas
 end  
 def empleado
      text "Empleado: #{@nomina.empleado.nombre}", size: 20, style: :bold
   end	 

 def sa
      text "Salario: #{@nomina.salario.nombre}", size: 15, style: :bold
   end	  

 def horasextras
      text "Horas Extras: #{@nomina.horasextras}", size: 15, style: :bold
   end	  

 def recargosdiurnos
      text "Recargos Diurnos: #{@nomina.recargosdiurnos}", size: 15, style: :bold
   end	
   
 def recargosnocturnos
      text "Recargos Nocturnos: #{@nomina.recargosnocturnos}", size: 15, style: :bold
   end	
   
 def dominicales
      text "Dominicales: #{@nomina.dominicales}", size: 15, style: :bold
   end	      

 def festivos
      text "Festivos: #{@nomina.festivos}", size: 15, style: :bold
   end
   
 def comisiones
      text "Comiciones: #{@nomina.comisiones}", size: 15, style: :bold
   end
   
 def diasnotrabajados
      text "Dias No Trabajados: #{@nomina.diasnotrabajados}", size: 15, style: :bold
   end      

 def horasnotrabajadas
      text "Horas No Trabajadas: #{@nomina.horasnotrabajadas}", size: 15, style: :bold
   end     
end