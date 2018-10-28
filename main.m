addpath('./Filters/');
addpath('./Utils/');
I = double(imread('Joker.bmp'));
Out = fastSobel(I, 'M');
imwrite(uint8(Out), "result.bmp");
%SharpenSize(5,5,"point")
%SharpenSize(5,7,'line')