% Script for task 3 of lab 3

% Author: Matthew Knight
% File Name: task3.m
% Date: 2017-09-25

% Look at histograms of two images, match second to first

addpath('../images/');

I1 = imread('Tire_gray.png');
I2 = imread('barbara.png');

fig1 = figure;
subplot(1,2,1);
imshow(I1);

subplot(1,2,2);
plot(histogram(I1));
saveas(fig1,'tire_hist.png');

fig2 = figure;
subplot(1,2,1);
imshow(I2);

subplot(1,2,2);
plot(histogram(I2));
saveas(fig2,'barbara_hist.png');
%%
I3 = match(I1, I2);
%%
%fig2 = figure;
%subplot(1,2,1);
%imshow(I3);

%subplot(1,2,2);
%plot(histogram(I3));
%saveas('match_hist');
