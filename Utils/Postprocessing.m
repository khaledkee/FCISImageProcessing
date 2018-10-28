function out = Postprocessing(I, Postproc)
  if strcmpi(Postproc, "absolute") == 1
    out = abs(I);
  elseif strcmpi(Postproc, "cutoff") == 1
    [n m] = size(I);
    for i=1:n
      for j=1:m
        out(i,j) = min(max(I(i,j), 0), 255);
      endfor
    endfor
  else
    out = I;
  endif
endfunction
