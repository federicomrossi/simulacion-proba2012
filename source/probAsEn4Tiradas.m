function y = probAsEn4Tiradas(n)
	cantTiradasEnLasQueSalioAs = 0;
	for i = 1:n
		salioAs = false;
		d1 = randomDado(4);
		d2 = randomDado(4);
		for j = 1:4
			if(d1(j)== 1 || d2(j) == 1)
				salioAs = true;
			endif	
		endfor
		if (salioAs)
			cantTiradasEnLasQueSalioAs = cantTiradasEnLasQueSalioAs + 1;
		endif
	endfor	
	y = cantTiradasEnLasQueSalioAs/n;
endfunction
