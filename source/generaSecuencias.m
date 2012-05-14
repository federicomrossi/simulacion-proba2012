# Funcion que genera un listado de secuencias de longitud aleatoria.
# PRE: Debe pasarse por parametro 'n', que es la cantidad de secuencias a generar, y 
# 'm' que es la cantidad de entradas que figuran en las secuencias.
# POST: Se devuelve el listado de secuencias.
function y = generaSecuencias(n,m)

	listaDeSecuencias = {};
	#Ciclo que genera las n secuencias.
	
	for i = 1:n
		
		listaPorCorrida = [];
		yaAparecidos = 1;
		
		#El ciclo corta cuando aparecen todos los valores entre 1 y 'm' en la secuencia.
		while (yaAparecidos <= m)
		
			#Se busca un valor aleatorio entre 1 y m. 
			valorAleatorio = ceil(rand(1,1)*m);
			
			#Si ese valor no se encontraba presente en la secuencia actual, se suma uno a la cantidad de numeros que ya aparecieron.
			if(!ismember(valorAleatorio,listaPorCorrida))
				yaAparecidos = yaAparecidos + 1;
			endif	
			
			#Incluye el numero a la secuencia.
			listaPorCorrida = [listaPorCorrida valorAleatorio];		
		
		endwhile
	
		#Agrega la secuencia al listado. 	
		listaDeSecuencias{i} = listaPorCorrida;
	
	endfor
	
	y = listaDeSecuencias;
	
endfunction

