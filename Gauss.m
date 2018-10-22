function A = Gauss(sigma)
  A = [];
  N = int32(3.7 * sigma - 0.5);
  MaskSize = 2 * N + 1;
  A = GaussSize(MaskSize,sigma);
endfunction