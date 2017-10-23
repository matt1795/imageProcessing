% Task 2: formula �based image sampling

% Author: Matthew Knight
% File Name: task2.m
% Date: 2017-10-16

addpath('../images/');

width = 256;

% Generate sine wave image

I1 = zeros(256);
for i = 1:width
    for j = 1:width
        I1(i,j) = 0.5*cos(2*pi*sqrt(10)*j) + 0.5;
    end
end
ang = atan(1/3)*180/pi;
I1 = imrotate(I1, ang);

fig1 = figure;
imshow(I1);
title('Original');
saveas(fig1, 'original_sine.png');

% Down sample image and resize for different
fig2 = figure;
for i = 2:5
    I2 = I1(1:i:end, 1:i:end);
    I2 = imresize(I2, [width, width], 'bicubic');
    subplot(2,2, i-1);
    imshow(I2);
    title("M = " + i);
end

saveas(fig2, "sub_sample_sine.png");