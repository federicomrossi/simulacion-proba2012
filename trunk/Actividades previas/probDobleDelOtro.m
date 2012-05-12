function y = probDobleDelOtro(tiradasDado1,tiradasDado2)

	cantDobleDoble = 0;
	for i= 1:length(tiradasDado1)
		if( tiradasDado1(i) == 2*tiradasDado2(i))
			cantDobleDoble = cantDobleDoble + 1;
		endif	
	endfor
	y = cantDobleDoble/length(tiradasDado1);
endfunction
