function out = fastGauss(I,Sigma)
   N = int32(3.7 * Sigma - 0.5);
   MaskSize = N+N+1;
   X = zeros(1,MaskSize,'double');
   Y = zeros(MaskSize,1,'double');
   for i=1:MaskSize
     r = -MaskSize + i - 1;
     X(1,i) = Y(i,1) = (1.0/sqrt(2*pi*Sigma)) * exp(-((r*r)/(2*Sigma*Sigma)));
   endfor
   out = LinearFilter(LinearFilter(I,X,'none'),Y,'none');
endfunction
