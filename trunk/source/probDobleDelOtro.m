# Funcion que estima la probabilidad de que al tirar dos dados, uno tenga
# el doble de valor que el otro.
# PRE: Debe pasarse por parametro dos vectores que sean los valores obtenidos
# en dos tiradas distintas de dados, cuyos valores se obtienen utilizando la
# funcion randomDado()
# POST: Se devuelve la probabilidad.
function y = probDobleDelOtro(tiradasDado1,tiradasDado2)

	cantDobleDoble = 0;
	
	for i= 1:length(tiradasDado1)
		if( tiradasDado1(i) == 2*tiradasDado2(i))
			cantDobleDoble = cantDobleDoble + 1;
		endif	
	endfor
    
	y = cantDobleDoble/length(tiradasDado1);
	
endfunction
