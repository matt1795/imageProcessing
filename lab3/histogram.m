% Histogram Function

% Author: Matthew Knight
% File Name: histogram.m
% Date: 2017-10-15

% This function returns an array which represents all the bins for a uint8
% encoded image.

function a = histogram(I)

a = zeros(1,256);

[m,n] = size(I);

for i = 1:m
    for j = 1:n
        a(I(i,j) + 1) = a(I(i,j) + 1) + 1;
    end
end