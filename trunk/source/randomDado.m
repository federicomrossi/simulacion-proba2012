# Funcion que simula n tiradas de un dado.
# PRE: 'n' es la cantidad de veces que se desea lanzar el dado.
# POST: se devuelve un vector con los valores obtenidos en los lanzamientos.


function listaDeValores = randomDado(n)
	
	listaDeValores = ceil(rand(1,n)*6);

endfunction
