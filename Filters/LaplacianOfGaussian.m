function A = LaplacianOfGaussian(Sz, Sigma)
  A = []; 
  Sigma = double(Sigma);
  if rem(Sz,2) == 1
   A = eye(Sz,'double');
   x = ((Sz-1) / 2) * -1;
   for i = 1:Sz
    y = ((Sz-1) / 2) * -1;
    for j = 1:Sz
       val = -1.0/(pi*Sigma*Sigma*Sigma*Sigma);
       exponent = -(x * 1.0 * x + y * 1.0 * y) / (2.0 * Sigma * Sigma);
       base = exp(exponent);
       val2 = (1.0 - (x*x+y*y)/(2*Sigma*Sigma));
       A(i,j) = val * val2 * base;
    y = y + 1;
    endfor
    x = x + 1;
   endfor
  endif
endfunction
