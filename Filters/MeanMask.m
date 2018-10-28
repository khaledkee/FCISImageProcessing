function A = MeanMask(W,H)
  A = [];
  if rem(W,2) == 1 && rem(H,2) == 1
   sz = W * H;
   A = zeros(W,H);
  for i = 1:W
    for j = 1:H
       A(i,j) = 1.0 / sz;
    endfor
   endfor
  endif
endfunction
