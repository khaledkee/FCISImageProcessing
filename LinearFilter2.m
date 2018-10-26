
function out = LinearFilter2(I, FHeight, FWidth, Filter, Postpoc)
	out = Conv(I, FHeight, FWidth, Filter);
endfunction
