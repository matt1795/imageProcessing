% Matlab Equalization Function

% Author: Matthew Knight
% File Name: equalize.m
% Date: 2017-10-15

% This function returns an image which is the histogram equalized image of
% I1.

function I2 = equalize(I1)



[m, n] = size(I1);
p = histogram(I1)/(m*n);
s = zeros(1,256);
I2 = I1;
s(1) = p(1);

for i = 1:256
    if i > 1
        s(i) = s(i-1) + p(i);
    end
end

s = round(s*255);

for i = 1:m
    for j = 1:n
        I2(i,j) = s(I1(i,j)+1);
    end
end