function out = EdgeMagnit(I)
  X = LinearFilter(I,Sobel('H'),"absolute");
  Y = LinearFilter(I,Sobel('V'),"absolute");
  out = X+Y;
  out = Postprocessing(out, "cutoff");	
endfunction
