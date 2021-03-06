% Task 1 of Lab 2

% Author: Matthew Knight
% File Name: task1.m
% Date: 2017-09-18

%%
I = imread('peterrrrr.jpg');
I = rgb2gray(I);
imshow(I)
%%

%% Logarithmic Transform Graph

r = 0:255;

fig1 = figure;
s1 = 0.1*log(1 + r);
s2 = 1*log(1 + r);
s3 = 10*log(1 + r);


plot(r, s1); hold on
plot(r, s2);
plot(r, s3);
grid on;
title('Logarithmic Transformation');
xlabel('Input Intensity');
ylabel('Output Intensity');
saveas(fig1, 'logarithmic.png');
%%

%% Contrast Stretch Graph
fig2 = figure;

s1 = 1./((1 + (0.5./r)).^1);
s2 = 1./((1 + (0.5./r)).^2);
s3 = 1./((1 + (0.5./r)).^3);
s4 = 1./((1 + (0.5./r)).^4);
s5 = 1./((1 + (0.5./r)).^5);

plot(r, s1); hold on
plot(r, s2);
plot(r, s3);
plot(r, s4);
plot(r, s5);
grid on;
title('Contrast Sketching Transformation');
xlabel('Input Intensity');
ylabel('Output Intensity');
saveas(fig2, 'contrast_stretch.png');
%%

%% Plot original and offset image
fig3 = figure;
I2 = imadd(I, 60);

subplot(1,2,1);
imshow(I);

subplot(1,2,2);
imshow(I2);

saveas(fig3, 'twoPeters.png');
%%

%% Min and max values of above images
minI = min(I);
maxI = max(I);
minI2 = min(I2);
maxI2 = max(I2);
%%

%% Count number of pixels that have value 255
num_white_I = sum(I(:,:) == 255);
num_white_I2 = sum(I2(:,:) == 255);
%%

%% Show negative of tire
fig4 = figure;
I = imread('Tire.tif');
I2 = imcomplement(I);
subplot(1,2,1);
imshow(I);
subplot(1,2,2);
imshow(I2);
saveas(fig4, 'tire_neg.png');
%%

%% Gamma transformation on tire
fig5 = figure;
I = imread('tire.tif');
I = im2double(I);
s1 = I.^0.4;
s2 = I.^1;
s3 = I.^3;
subplot(2,2,1);
imshow(I);
subplot(2,2,2);
imshow(s1);
subplot(2,2,3);
imshow(s2);
subplot(2,2,4);
imshow(s3);
saveas(fig5, 'tire_gamma.png');
%%

%% log different gains
I = imread('tire.tif');

fig6 = figure;
s1 = log(1 + double(I));
s2 = 2*log(1 + double(I));
s3 = 5*log(1 + double(I));
subplot(2,2,1);
imshow(I);
subplot(2,2,2);
imshow(uint8(s1));
subplot(2,2,3);
imshow(uint8(s2));
subplot(2,2,4);
imshow(uint8(s3));
saveas(fig6, 'tire_log.png');
%%

%% Piecewise function
I = imread('peterrrrr.jpg');
I = rgb2gray(I);

I2 = negT(I, 0);
I3 = negT(I, 255);
I4 = negT(I, 100);

fig7 = figure;
imshow(I2)
saveas(fig7, 'peter_normal.png');

fig8 = figure;
imshow(I3)
saveas(fig8, 'peter_neg.png');

fig9 = figure;
imshow(I4)
saveas(fig9, 'peter_partial.png');
%%

%% Interpolation
I = imread('../images/lena.tiff');

val = interp('bilinear', [4.5, 5.36], I);
%%

%% translation
I = imread('../images/lena.tiff');

I2 = rot(I, 10);
I3 = rot(I, -80);

fig10 = figure;
imshow(I2)
saveas(fig10, 'lena_rot1.png');

fig11 = figure;
imshow(I3)
saveas(fig11, 'lena_rot2.png');
%%