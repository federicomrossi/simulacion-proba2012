# Funcion que estima la probabilidad de que al tirar dos dados, uno tenga
# el doble de valor que el otro.
# PRE: Debe pasarse por parametro 'n', que es la cantidad de tiradas a simular, utilizando la funcion
#randomDado()
# POST: Se devuelve la probabilidad.
function y = probDobleDelOtro(n)
	
	tiradasDado1 = randomDado(n);
	tiradasDado2 = randomDado(n);

	salioDobleDelOtro = 0;
	
	for i= 1:n
		if( tiradasDado1(i) == 2*tiradasDado2(i))
			salioDobleDelOtro = salioDobleDelOtro + 1;
		endif	
	endfor
    
	y = salioDobleDelOtro/n;
	
endfunction
