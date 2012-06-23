# Funcion que genera numeros enteros aleatoriamente, dentro de un intervalo especifico.
# PRE: 'n' es la cantidad de numeros aleatorios requeridos, 'piso' y 'techo' son los 
# extremos del intervalo(incluidos).
# POST: se devuelve un vector de longitud n con los valores obtenidos.
function listaDeValores = randomGenerico(piso,techo,n)
	
	#Consigo numeros aleatorios entre 0 y la long del intervalo.
	valores = rand(1,n)*(techo-piso+1);
	
	#Los redondeo para obtener valores enteros.
	enteros = ceil(valores);
	
	#Desplazo los valores para que esten dentro del intervalo pedido.
	listaDeValores = enteros + piso -1;

endfunction
