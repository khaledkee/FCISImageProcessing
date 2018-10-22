function out = LinearFilter(I, Filter, Postpoc)
	[H W] = size(Filter);
	out = LinearFilterSize(I, H, W, Filter, Postpoc);
endfunction
	