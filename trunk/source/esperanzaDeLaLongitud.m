function y = esperanzaDeLaLongitud(listaDeSecuencias) 
	largoTotal = 0;
	cantDeSecuencias = length(listaDeSecuencias);
	for i = 1:cantDeSecuencias
		largoTotal = largoTotal + length(listaDeSecuencias{i});
	endfor
	y = largoTotal/cantDeSecuencias;
endfunction
