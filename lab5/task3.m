% Task 3:  Nonrectangular Sampling Grids

% Author: Matthew Knight
% File Name: task3.m
% Date: 2017-10-16

addpath('../images/');

width = 256;

% Create checkerboard image

I1 = zeros(width);
for i = 1:width
    for j = 1:width
        if mod(i,2) ~= 0
            if mod(j,2) == 0;
                I1(i,j) = 1;
            end
        else
            if mod(j,2) ~= 0
                I1(i,j) = 1;
            end
        end
    end
end

fig1 = figure;
imshow(I1);

saveas(fig1, 'checkered.png');

s = [1 1; 1 -1];

I2 = s *I1;