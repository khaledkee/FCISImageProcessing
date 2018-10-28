function out = Conv(I, FHeight, FWidth, Filter)
	[H W] = size(I);
	out = zeros(H, W);
	for	y=1:H
		for x=1:W
			newV = 0.0;
			Oy = uint32(y -((FHeight-1) ./ 2));
			Ox = uint32(x - ((FWidth-1) ./ 2));
      for i=1:FHeight
				for j=1:FWidth
					Old = 0.0;
          if Oy > 0 && Oy <= H && Ox > 0 && Ox <= W
						Old = double(I(Oy, Ox));
					endif
					newV += Old * Filter(i,j);
          Ox += 1;
		   endfor
       Oy += 1;
       Ox -= FWidth;
	   endfor
     out(y, x) = newV;
    endfor
  endfor
endfunction 