function y = probNum(num,vector)
	i = 0;
	for j = 1:length(vector)
		if(vector(j) == num)
			i = i+1;
		endif
	endfor
	y = i/length(vector);
endfunction	
