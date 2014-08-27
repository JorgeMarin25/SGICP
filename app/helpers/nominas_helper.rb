module NominasHelper
	def salario(sa)

		if sa == "Salario Diario"
			"$20,533.33"
		elsif sa == "Minimo Mensual"
			"$616,000.00"
		elsif  sa == "Salario Por Hora"	
			"$4.500"
		end
	end

	def estado(est)

		if est
			"<p class='text-success'> Activo </p>".html_safe
		else
			"<p class='text-danger'> Inactivo </p>".html_safe
		end

	end

	def nombre(nom)
		"<b> #{nom} </b>".html_safe
	end
end

