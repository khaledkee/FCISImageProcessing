function M = Sobel(Mask)
  M = [];
  if Mask == 'H'
	  M = [-1,-2,-1;0,0,0;1,2,1];
  elseif Mask == 'V'
	  M = [-1,0,1;-2,0,2;-1,0,1];
  end
endfunction
