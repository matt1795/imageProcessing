% Script for Question 1.

% Author: Matthew Knight
% File Name: q2.m
% Date: 2017-10-11

% Create a 9x9 white image with a black pixel in the center. Apply a
% averaging filter twice and save all three images.

A = ones(9);
A(5,5) = 0;

f = ones(3)/9;4

B = imfilter(A,f);
C = imfilter(B,f);

fig1 = figure;
subplot(1,3,1);
imshow(A);
title('A')
subplot(1,3,2);
imshow(B);
title('B');
subplot(1,3,3);
imshow(C);
title('C');