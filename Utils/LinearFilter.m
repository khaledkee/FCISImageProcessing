function out = LinearFilter(I, Filter, Postpoc)
	[FH FW] = size(Filter);
  out = Conv(I, FH, FW, Filter);
  out = Postprocessing(out, Postpoc);
endfunction
	