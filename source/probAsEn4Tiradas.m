# Funcion calcula la probabilidad de que salga un as en 4 tiradas de un dado.
# PRE: 'n' es la cantidad de repeticiones de la experiencia.
# POST: Se devuelve la probabilidad.
function y = probAsEn4Tiradas(n)

	cantTiradasEnLasQueSalioAs = 0;
	
	#Ciclo que repite n veces las 4 tiradas de un dado. 
	for i = 1:n
		
		salioAs = false;
		d1 = randomDado(4);
		
		for j = 1:4
			if(d1(j)== 1)
				#Salio al menos un as.
				salioAs = true;
			endif	
		endfor
		
		if (salioAs)
			cantTiradasEnLasQueSalioAs = cantTiradasEnLasQueSalioAs + 1;
		endif
	    
	endfor	
    	
	#Se devuelve favorables/posibles.
	y = cantTiradasEnLasQueSalioAs/n;
	
endfunction
