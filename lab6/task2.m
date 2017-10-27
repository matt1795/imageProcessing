% Task 2: Dithering

% Author: Matthew Knight
% File Name: task2.m
% Date: 2017-10-23

addpath('../images');

% Write a MATLAB program to Quantize the Barbara.jpg image to 4 bpp using
% a uniform dithered quantizer

I1 = imread('lena.tiff');
I2 = bitshift(I1, -4);
I3 = imnoise(I1, 'gaussian', 0, 0.0003);
I4 = bitshift(I3, -4);

fig1 = figure;
subplot(1,3,1);
imshow(I1);
subplot(1,3,2);
imshow(I2, [0 15]);
subplot(1,3,3);
imshow(I4, [0 15]);

saveas(fig1, 'dither_lena.png');

