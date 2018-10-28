function M = SharpenSize(H, W, type)
  if strcmpi(type, "point") == 1
    M(1:H,1:W) = -1;
    M(uint32(H./2),uint32(W./2)) = H * W;
  else
    M(1:H,1:W) = 0;
    for i=1:H
      M(i,uint32(W./2)) = -1;
    endfor
    for j=1:W
      M(uint32(H./2),j) = -1;
    endfor
    M(uint32(H./2),uint32(W./2)) = H + W - 1;
  endif
endfunction
