function out = LinearFilterSize(I, FHeight, FWidth, Filter, Postpoc)
	out = Conv(I, FHeight, FWidth, Filter);
  imwrite(out, "preprocessing.bmp");
  out = Postprocessing(out, Postpoc);
endfunction
