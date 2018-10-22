function M = Sobel(Mask)
  M = [];
  % (1,1) (1,2) (1,3)
  % (2,1) (2,2) (2,3)
  % (3,1) (3,2) (3,3)
  if Mask == 'H'
    M = [-1, -2, -1; 0,0,0; 1, 2, 1];
  elseif Mask == 'V'
    M = [-1, 0, 1; -2,0,2; -1, 0, 1];
  end
endfunction
