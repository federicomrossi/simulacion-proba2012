function listaDeValores = randomGenerico(piso,techo,n)

	i = ceil(rand(1,n) * (techo-piso));
	
	listaDeValores = i+piso-1;

endfunction


