# Funcion que genera un histograma de los largos de las secuencias.
# PRE: Debe pasarse por parametro la listaDeSecuencias.


function histogramaEsperanzaDeLaLongitud(listaDeSecuencias)
	
	cantDeSecuencias = length(listaDeSecuencias);
	largosSecuencias = [];
	
	#Genera una lista con la longitud de cada secuencia.
	for i = 1:cantDeSecuencias
		largosSecuencias = [largosSecuencias length(listaDeSecuencias{i})];
	endfor
	
	
	x=[0:1000];
	y= esperanzaDeLaLongitud(listaDeSecuencias);
	
	colormap (summer (64));
	plot(1:1000,largosSecuencias,x,y)
	
endfunction
