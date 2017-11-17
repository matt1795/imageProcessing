% Add noise to image

% Author: Matthew Knight
% File Name: addnoise.m
% Date: 2017-11-15

% This script creates an image with a white square in the center, adds noise,
% and then save a figure showing the histogram of the image before and after.

% Make image
I = zeros(200);
I(95:105, 95:105) = 1;

% Add noise
I2 = imnoise(I,'gaussian', 0.5, 0.01);

fig1 = figure;
subplot(1,2,1);
imhist(I);
title('Before Noise');

subplot(1,2,2);
imhist(I2);
title('After Noise');

saveas(fig1, 'addnoise.png');
