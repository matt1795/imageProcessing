% Lab 1 for ELEX 7815

% Author: Matthew Knight
% File Name: lab1.m
% Date: 2017-09-09

% Task 1 - reading and writing greyscale images

I = imread('barbara.jpg');		% Semicolon doesn't let function print
					% to console.
iminfo('barbara.jpg')

% What types of data barbara has?
whos I
size(I)
class(I)

% Show image
imshow(I, [0, 1]);

% Editing image
imtool(I)

% Saving images
lena = imread('lena.tiff');
imwrite(lena, 'lena1.jpg');
imwrite(lena, 'lena2.jpg', 'quality', 5);
imwrite(lena, 'lena3.jpg', 'quality', 80);

% Find size of each file, show all images in one figure using subplot, explain
% quality and size

% Task 2 - Reading Color Images

I2 = imread('fruits.png');
class(I2)
size(I2)

% Show specific pixel intensity rgb respectively
I2(93, 180, 1)
I2(93, 180, 2)
I2(93, 180, 3)

% Show image of each color channel
imshow(I2(:, :, 1)
imshow(I2(:, :, 2)
imshow(I2(:, :, 3)

% Save as indexed coloring
[temp, map] = rgb2ind(I2, 32);
imwrite(temp, map, 'fruits2.png');
[I3, map] = imread('fruitss2.png');
imshow(I3, map)

% conversion functions
I4 = imread('onion.png')
imshow(I4)
imshow(rgb2gray(I4))

% Quality of the image will decrease. While in some situations there is no
% discernable difference, the quality does decrease, the human eye just cannot
% detect it.

% Task 3 - Getting familiar with the Image Processing Toolbox

% For later
