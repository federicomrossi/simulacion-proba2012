# Funcion que calcula la esperanza de la longitud de unas secuencias aleatorias.
# PRE: Debe pasarse por parametro  la listaDeSecuencias.
# POST: Se devuelve la esperanza.
function y = esperanzaDeLaLongitud(listaDeSecuencias) 

	largoTotal = 0;	
	cantDeSecuencias = length(listaDeSecuencias);
	
	#Recorre la listaDeSecuencias y suma las longitudes de cada una.
	for i = 1:cantDeSecuencias
		largoTotal = largoTotal + length(listaDeSecuencias{i});
	endfor
    
	y = largoTotal/cantDeSecuencias;
	
endfunction
