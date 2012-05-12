function y = punto1(n,m)
	listaDeSecuencias = {};
	for i = 1:n
		listaPorCorrida = [];
		yaAparecidos = 1;
		while (yaAparecidos <= m)
			valorAleatorio = ceil(rand(1,1)*m);
			if(!ismember(valorAleatorio,listaPorCorrida))
				yaAparecidos = yaAparecidos + 1;
			endif	
			listaPorCorrida = [listaPorCorrida valorAleatorio];
				
		endwhile
	listaDeSecuencias{i} = listaPorCorrida;
	endfor
	y = listaDeSecuencias;
endfunction

