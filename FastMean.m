function out = fastMean(I,MaskSize)
   X = zeros(1,MaskSize,'double');
   Y = zeros(MaskSize,1,'double');
   if mod(MaskSize,2) == 1
     for i=1:MaskSize
       X(1,i) = Y(i,1) = (1.0/MaskSize);
     endfor
     out = LinearFilter(LinearFilter(I,X,'none'),Y,'none');
   endif
endfunction
