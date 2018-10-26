function out = EdgeMagnit(I)
  X = Apply(I,Sobel('H'),'Absluote');
  Y = Apply(I,Sobel('V'),'Absluote');
  out = X+Y;
  [n, m] = size(out)
  for i=1:n
    for j=1:m
      out(i,j) = min(out(i,j),255);
    endfor
  endfor
endfunction
