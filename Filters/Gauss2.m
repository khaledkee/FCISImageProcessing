function A = Gauss2(sigma)
  A = [];
  N = int32(3.7 * sigma - 0.5);
  MaskSize = 2 * N + 1;
  A = Gauss1(MaskSize,sigma);
endfunction