% Script for task 3 of lab 3

% Author: Matthew Knight
% File Name: task3.m
% Date: 2017-09-25

% Look at histograms of two images, match second to first

addpath('../images/');

I1 = imread('tire_gray.png');
I2 = imread('barbara.png');

fig1 = figure;
subplot(1,2,1);
imshow(I1);

subplot(1,2,2);
plot(histogram(I1));
saveas('tire_hist');

fig2 = figure;
subplot(1,2,1);
imshow(I2);

subplot(1,2,2);
plot(histogram(I2));
saveas('barbara_hist');

I3 = match(I2, I1);

fig2 = figure;
subplot(1,2,1);
imshow(I3);

subplot(1,2,2);
plot(histogram(I3));
saveas('match_hist');
