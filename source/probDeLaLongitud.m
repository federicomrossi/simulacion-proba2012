# Funcion que calcula la probabilidad de la longitud de una secuencia dentro de 
# una lista de secuencias.
# PRE: Debe pasarse por parametro la listaDeSecuencias, y la longitud de la que 
# se quiere calcular la probabilidad.
# POST: Se devuelve la probabilidad.
function y = probDeLaLongitud(longitud,listaDeSecuencias) 

	cantApariciones = 0;	
	cantDeSecuencias = length(listaDeSecuencias);
	
	#Recorre la listaDeSecuencias y cuenta la cantidad de secuencias con la misma longitud.
	for i = 1:cantDeSecuencias
		if  (longitud == length(listaDeSecuencias{i}))
			cantApariciones = cantApariciones + 1;
		endif
    	endfor
	y = cantApariciones/cantDeSecuencias;
	
endfunction
