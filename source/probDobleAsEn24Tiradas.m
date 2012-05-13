# Funcion calcula la probabilidad de que salga al menos un doble as en 24 tiradas de dos dados.
# PRE: 'n' es la cantidad de repeticiones de la experiencia.
# POST: Se devuelve la probabilidad de que salga doble as en 24 tiradas.
function y = probDobleAsEn24Tiradas(n)

	cantExperienciasEnLasQueSalioDobleAs = 0;
	
	#Ciclo que repite n veces las 24 tiradas.
	for i = 1:n
	    
		salioDobleAs = false;
		#Se generan las 24 tiradas de ambos dados.
		d1 = randomDado(24);
		d2 = randomDado(24);
		
		for j = 1:24
			if(d1(j)== 1 && d2(j) == 1)
				#Si son ambos iguales a uno, entonces se obtuvo al menos un doble as.
				salioDobleDobleAs = true;
			endif	
		endfor
	    
		if (salioDobleAs)
			cantExperienciasEnLasQueSalioDobleAs = cantExperienciasEnLasQueSalioDobleAs + 1;
		endif
	    
	endfor	
    
    	#Se devuelve favorables/posibles.
	y = cantExperienciasEnLasQueSalioDobleAs/n;
	
endfunction
