function y = probDobleAsEn24Tiradas(n)
	cantExperienciasEnLasQueSalioAs = 0;
	for i = 1:n
		salioDobleAs = false;
		d1 = randomDado(24);
		d2 = randomDado(24);
		for j = 1:24
			if(d1(j)== 1 && d2(j) == 1)
				salioDobleAs = true;
			endif	
		endfor
		if (salioDobleAs)
			cantExperienciasEnLasQueSalioAs = cantExperienciasEnLasQueSalioAs + 1;
		endif
	endfor	
	y = cantExperienciasEnLasQueSalioAs/n;
endfunction
