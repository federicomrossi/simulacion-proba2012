# Funcion que estima la probabilidad de que aparezca un numero en un vector
# PRE: Debe pasarse por parametro  el numero 'num', que es el numero del que se quiere calcular la probabilidad, y 
# el 'vector' de numeros.
# POST: Se devuelve la probabilidad.
function y = probNum(num,vector)
	cantApariciones = 0;
	for j = 1:length(vector)
		if(vector(j) == num)
			cantApariciones = cantApariciones+1;
		endif
	endfor
	y = cantApariciones/length(vector);
endfunction	
