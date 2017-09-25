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
imhist(I1)
title('barbara')

fig2 = figure;
imhist(I2)
title('tire_gray')

fig3 = figure;
imhist(I3)
title('pout_gray')

fig4 = figure;
imhist(I4)
title('eight_gray')
