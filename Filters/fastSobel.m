function Out = fastSobel(I, Mask)
  if Mask == 'M'
    X = fastSobel(I, 'H');
    Y = fastSobel(I, 'V');
    Out = X + Y;
    Out = Postprocessing(Out, "cutoff");
    return;
  endif;
  M1 = [];
  M2 = [];
  if Mask == 'H'
	  M1 = [-1;0;1];
    M2 = [1,2,1];
  elseif Mask == 'V'
    M1 = [-1,0,1];
    M2 = [1;2;1];
  endif
  Out = LinearFilter(LinearFilter(I,M1, "none"), M2, "absolute");
endfunction
