% Task 4 of Lab 1 for ELEX 7815

% Author: Matthew Knight
% File Name: task4.m
% Date: 2017-09-09

% This program plots the profile of pixel intensities of row 164 of
% cameraman.tif and normalized correlation among row intensities

I = imread('cameraman.tif');
I = im2double(I);
row = I(164, :);

fig1 = figure;
subplot(1,2,1);
imshow(I);
subplot(1,2,2);
title('Row 164 Intensity vs. Column');
plot(row);
xlabel('Column');
ylabel('Intensity');
saveas(fig1, 'rowIntensity.png');

% now to correlate the row
m = 128;
N = 256;
corr = zeros(1, m);

for k = 1:m
    corr(k) = sum(dot(row(k:N), row(1:N-k+1)))/(N-k+1);

norm_corr = corr/max(corr);

fig2 = figure;
plot(norm_corr);
title('Normalized Autocorrelation: Row 164');
saveas(fig2, 'autocorrelation.png');
