% Script for task 1 of lab 3

% Author: Matthew Knight
% File Name: task1.m
% Date: 2017-09-25

addpath('../images');


I1 = imread('barbara.jpg');
I2 = imread('Tire_gray.jpg');
I3 = imread('pout_gray.jpg');
I4 = imread('eight_gray.jpg');


fig1 = figure;
title('Histogram Comparisons');

subplot(2,2,1);
imhist(I1);
title('barbara');

subplot(2,2,2);
imhist(I2)
title('tire_gray');

subplot(2,2,3);
imhist(I3);
title('pout_gray');

subplot(2,2,4);
imhist(I4);
title('eight_gray');

saveas(fig1, 'histogram_compare');
