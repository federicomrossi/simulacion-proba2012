function histogramaEsperanzaDeLaLongitud(listaDeSecuencias)
	
	cantDeSecuencias = length(listaDeSecuencias);
	largosSecuencias = [];
	
	for i = 1:cantDeSecuencias
		largosSecuencias = [largosSecuencias length(listaDeSecuencias{i})];
	endfor
	
	x=[0:1000];
	y= esperanzaDeLaLongitud(listaDeSecuencias);
	
	colormap (summer (64));
	plot(1:1000,largosSecuencias, x,y)
	
endfunction
