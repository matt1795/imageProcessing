% Task 1: Display the Spectrum of Your Image

% Author: Matthew Knght
% File Name: task1.m
% Date: 2017-10-30

addpath('../images');

I = imread('lena.tiff');
I = double(I)/255;
ft_coff = fft2(I);

ft_shift=fftshift(ft_coff);
ft_mag = abs(ft_coff);

figure(1)
imshow(log(1+abs(ft_shift)),[])
figure(2)
imshow((ft_shift),[])