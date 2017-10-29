% Task 1: Alias Distortion

% Author: Matthew Knight
% File Name: task1.m
% Date: 2017-10-15

addpath('../images');

I1 = imread('barbara.png');
[m,n] = size(I1);
M = 4;

I2 = I1(1:M:end,1:M:end);

I2 = imresize(I2, [m, n], 'bicubic');

fig1 = figure;
subplot(1,2,1);
imshow(I1);
title('Original');

subplot(1,2,2);
imshow(I2);
title('Sub-sampled');

saveas(fig1, 'sub_sampled.png');

% Now to low pass filter the original image
filter = fspecial('average', 5);
I3 = imfilter(I1, filter);

I2 = I3(1:M:end,1:M:end);

I2 = imresize(I2, [m, n], 'bicubic');

fig2 = figure;
subplot(1,2,1);
imshow(I3);
title('Low Pass Filtered');

subplot(1,2,2);
imshow(I2);
title('Sub-sampled');

saveas(fig2, 'low_pass_sub_sampled.png');