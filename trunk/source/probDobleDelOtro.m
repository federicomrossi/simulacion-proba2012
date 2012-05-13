# Funcion que estima la probabilidad de que al tirar dos dados, uno tenga
# el doble de valor que el otro.
# PRE: Debe pasarse por parametro 'n', que es la cantidad de tiradas a simular, utilizando la funcion
#randomDado()
# POST: Se devuelve la probabilidad.


function y = probDobleDelOtro(n)
	
	#Se simulan las n tiradas de dos dados.
	tiradasDado1 = randomDado(n);
	tiradasDado2 = randomDado(n);

	salioDobleDelOtro = 0;
	
	for i= 1:n
		if( (tiradasDado1(i) == 2*tiradasDado2(i)) || (tiradasDado2(i) == 2*tiradasDado1(i)))
			
			#Si cualquiera de los dados es el doble del otro, se cuenta como caso favorable.
			salioDobleDelOtro = salioDobleDelOtro + 1;
		endif	
	endfor
    	#Se devuelve favorables/posibles.
	y = salioDobleDelOtro/n;
	
endfunction
