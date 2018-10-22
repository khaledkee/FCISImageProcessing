function out = EdgeMagnit(I)
  X = Apply(I,Sobel('H'),'Absluote');
  Y = Apply(I,Sobel('V'),'Absluote');
  out = X+Y;
  out = Postprocessing(out, 'cutoff');
endfunction
