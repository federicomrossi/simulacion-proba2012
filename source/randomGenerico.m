# Funcion que genera numeros enteros aleatoriamente, dentro de un intervalo especifico.
# PRE: 'n' es la cantidad de numeros aleatorios requeridos, 'piso' y 'techo' son los 
# extremos del intervalo(incluidos).
# POST: se devuelve un vector de longitud n con los valores obtenidos.
function listaDeValores = randomGenerico(piso,techo,n)

	i = ceil(piso-1+(rand(1,n)*(techo-piso+1)));
	listaDeValores = i;

endfunction


