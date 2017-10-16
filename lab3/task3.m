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

I3 = match(I1, I2);

fig3 = figure;
subplot(2,3,1);
imshow(I1);
title('From');

subplot(2,3,2);
imshow(I2);
title('To');


subplot(2,3,3);
imshow(I3);
title('Result');

subplot(2,3,4);
plot(histogram(I1));
title('From');
xlim([0, 255]);

subplot(2,3,5);
plot(histogram(I2));
title('To');
xlim([0, 255]);

subplot(2,3,6);
plot(histogram(I3));
title('Result');
xlim([0, 255]);








