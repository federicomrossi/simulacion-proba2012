# Funcion que calcula la probabilidad de todas las longitudes 
# de una secuencia dentro de una lista de secuencias .
# PRE: Debe pasarse por parametro la listaDeSecuencias de las 
# que se quiere calcular la probabilidades.
# POST: Se devuelve una matriz con la longitud y su respectiva 
# probabilidad, por fila.
function y = probDeLaLongitud(listaDeSecuencias) 
	
	vectorDeLongitudesQueYaAparecieron = [];
	matriz = [];
	
	cantDeSecuencias = length(listaDeSecuencias);
	#Recorre la listaDeSecuencias y guarda en la matriz la long de la secuencia y su probabilidad.
	for i = 1:cantDeSecuencias
		longDeLaSecuencia = length(listaDeSecuencias{i});
		if  (!ismember(longDeLaSecuencia,vectorDeLongitudesQueYaAparecieron))
			matriz = [ matriz; longDeLaSecuencia probDeLaLongitud(longDeLaSecuencia,listaDeSecuencias)];
			vectorDeLongitudesQueYaAparecieron = [vectorDeLongitudesQueYaAparecieron longDeLaSecuencia];
		endif
    	endfor
	y = matriz;
	
endfunction
