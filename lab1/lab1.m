% Lab 1 for ELEX 7815

% Author: Matthew Knight
% File Name: lab1.m
% Date: 2017-09-09

% Task 1 - reading and writing greyscale images

I = imread('barbara.jpg');		% Semicolon doesn't let function print
					% to console.

% What types of data barbara has?
diary('iminfoDump.txt');
iminfo('barbara.jpg')
diary('whosDump.txt');
whos I
diary('sizeDump.txt');
size(I)
diary off;

% Show barbara
fig1 = figure;
subplot(1,3,1); 
imshow(I);
subplot(1,3,2); 
imshow(I, [50, 200]);
subplot(1,3,3); 
imshow(I, []);
saveas(fig1, 'imshow.png');

% Editing image
imtool(I)

% Saving images
lena = imread('lena.tiff');
imwrite(lena, 'lena1.jpg');
imwrite(lena, 'lena2.jpg', 'quality', 5);
imwrite(lena, 'lena3.jpg', 'quality', 80);

I1 = imread('lena1.jpg');
I2 = imread('lena2.jpg');
I3 = imread('lena3.jpg');

fig2 = figure;
subplot(1,3,1); 
imshow(I1);
subplot(1,3,2); 
imshow(I2);
subplot(1,3,3); 
imshow(I3);
saveas(fig2, 'lenaCompare.png');

% Task 2 - Reading Color Images

I2 = imread('fruits.png');
class(I2)
size(I2)

% Show specific pixel intensity rgb respectively
I2(93, 180)

% Show image of each color channel
fig3 = figure;
subplot(1,3,1);
title('Red');
imshow(I2(:, :, 1);
subplot(1,3,2);
title('Green');
imshow(I2(:, :, 2);
subplot(1,3,3);
title('Blue');
imshow(I2(:, :, 3);
saveas(fig3, 'threeChannels.png');

% Save as indexed coloring
[temp, map] = rgb2ind(I2, 32);
imwrite(temp, map, 'fruits2.png');
[I3, map] = imread('fruitss2.png');
fig4 = figure;
imshow(I3, map);
saveas(fig4, 'indexed.png');

% conversion functions
I4 = imread('onion.png')
imshow(I4)
imshow(rgb2gray(I4))

% Quality of the image will decrease. While in some situations there is no
% discernable difference, the quality does decrease, the human eye just cannot
% detect it.
