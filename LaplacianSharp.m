function M = LaplacianSharp()
  M = [];
  M = zeros(3);
  % (1,1) (1,2) (1,3)
  % (2,1) (2,2) (2,3)
  % (3,1) (3,2) (3,3)
  M(1,2) = -1;
  M(3,2) = -1;
  M(2,1) = -1;
  M(2,3) = -1;
  M(2,2) = 5;
endfunction
