# Funcion que genera un histograma de los largos de las secuencias.
# PRE: Debe pasarse por parametro la listaDeSecuencias.
function histogramaEsperanzaDeLaLongitud(listaDeSecuencias)
	
	cantDeSecuencias = length(listaDeSecuencias);
	largosSecuencias = [];
	
	#Genera una lista con la longitud de cada secuencia.
	for i = 1:cantDeSecuencias
		largosSecuencias = [largosSecuencias length(listaDeSecuencias{i})];
	endfor
	
	
	x=1:1000;
	y= esperanzaDeLaLongitud(listaDeSecuencias);
	
	function z = f_const(x,y)
	z = y;
	endfunction
	
	colormap (summer (64));
	plot(x,largosSecuencias,".","markersize",5,x,f_const(x,y),"@1.","markersize",5);
	xlabel("Secuencias generadas","fontsize",14);
 	ylabel("Longitud de cada secuencia","fontsize",14);

	
endfunction
