% Task 4 of Lab 1 for ELEX 7815

% Author: Matthew Knight
% File Name: task4.m
% Date: 2017-09-09

% This program plots the profile of pixel intensities of row 164 of
% cameraman.tif and normalized correlation among row intensities

I = imread('cameraman.tif');
row = I(164, :);

