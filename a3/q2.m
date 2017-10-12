% Script for Question 2.

% Author: Matthew Knight
% File Name: q2.m
% Date: 2017-10-11

% Create an image with 8 black bars, each with a width of 6 pixels and 
% spacing of 19 pixels betwwen themselves and the image borders. Make the 
% height equal to width. Filter with 25x25 and 20x20

f1 = ones(25)/(25^2);
f2 = ones(20)/(20^2);

A = [];

for i = 1:8
    A = [A ones(1,19)];
    A = [A zeros(1,6)];
end

A = [A ones(1,19)];
for i = 1:7
   A = [A; A]; 
end

B = imfilter(A, f1);
C = imfilter(A, f2);

fig1 = figure;
subplot(1,3,1);
imshow(A);
title('Original')
subplot(1,3,2);
imshow(B);
title('25x25');
subplot(1,3,3);
imshow(C);
title('20x20');