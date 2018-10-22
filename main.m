I = imread('Joker.bmp');
F = Sobel('H');
Out = LinearFilter(I, F, "absolute");
imwrite(Out, "result.bmp");