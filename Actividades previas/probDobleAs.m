function y = probDobleAs(n)
	tiradasDado1= randomDado(n);
	tiradasDado2 = randomDado(n);
	cantDobleAs = 0;
	for i= 1:length(tiradasDado1)
		if( tiradasDado1(i) == 1 && tiradasDado2(i) == 1)
			cantDobleAs = cantDobleAs + 1;
		endif	
	endfor
	y = cantDobleAs/length(tiradasDado1);
endfunction
