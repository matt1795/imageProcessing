% Script for task 2 of lab 3

% Author: Matthew Knight
% File Name: task2.m
% Date: 2017-09-25

% Compare results of my histogram function with others.

addpath('../images');

name = ["barbara", "Tire_gray", "pout_gray", "eight_gray"];

for i = 1:4
    I = imread(char(strcat(name(i) + ".png")));
    
    fig = figure;
    subplot(1,2,1);
    stairs(transpose(histogram(I)));
    xlim([0, 255]);
    subplot(1,2,2);
    imhist(I);

    saveas(fig, char(strcat(name(i) + "_compare.png")));
end

% Make my own equalization function and show results

for i = 2:3
    I = imread(char(strcat(name(i) + ".png")));
    I2 = equalize(I);

    fig = figure;

    subplot(2,2,1);
    imshow(I);
    title('Original');

    subplot(2,2,2);
    stairs(histogram(I));
    title('Histogram of Original')
    xlim([0, 255]);

    subplot(2,2,3);
    imshow(I2);
    title('Equalized Image');
    
    subplot(2,2,4);
    stairs(histogram(I2));
    title('Histogram After Equalization');
    xlim([0, 255]);

    saveas(fig, char(strcat(name(i) + '_equalize.png')));
end
