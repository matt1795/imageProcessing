% Script for task 1 of lab 3

% Author: Matthew Knight
% File Name: task1.m
% Date: 2017-09-25

addpath('../images');


I1 = imread('barbara.png');
I2 = imread('Tire_gray.png');
I3 = imread('pout_gray.png');
I4 = imread('eight_gray.png');

fig1 = figure;
title('Histogram Comparisons');

subplot(2,2,1);
imhist(I1);
title('barbara');

subplot(2,2,2);
imhist(I2)
title('tire');

subplot(2,2,3);
imhist(I3);
title('pout');

subplot(2,2,4);
imhist(I4);
title('eight');