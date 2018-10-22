function A = GaussSize(Sz,sigma)
  A = []; 
  if rem(Sz,2) == 1
   A = eye(Sz);
   x = ((Sz-1) / 2) * -1;
   for i = 1:Sz
    y = ((Sz-1) / 2) * -1;
    for j = 1:Sz
       val = 1.0/(pi*2.0*sigma*sigma);
       exponent = -(x * 1.0 * x + y * 1.0 * y) / (2.0 * sigma * sigma);
       base = exp(exponent);
       A(i,j) = val * base;
    y = y + 1;
    endfor
    x = x + 1;
   endfor
  endif
endfunction
