% Script for task 2 of lab 3

% Author: Matthew Knight
% File Name: task2.m
% Date: 2017-09-25

% Compare results of my histogram function with others.

addpath('../images');

name = ['barbara', 'Tire_gray', 'pout_gray', 'eight_gray'];

for i = 1:4
    I = imread(name(i) + '.jpg');
    
    fig = figure;
    title('My histogram vs. Matlab - ' + name(i));

    subplot(1,2,1);
    plot(histogram(I));

    subplot(1,2,2);
    imhist(I);

    saveas(fig, name(i) + '_compare');
end

% Make my own equalization function and show results

for i = 2:3
    I = imread(name(i) + '.jpg');
    I2 = equalize(I);

    fig = figure;
    title('Histogram Equalization of ' + name(i));

    subplot(2,2,1);
    imshow(I);

    subplot(2,2,2);
    histogram(I);

    subplot(2,2,3);
    imshow(I2);

    subplot(2,2,4);
    histogram(I2);

    saveas(fig, name(i) + '_equalize');
end
