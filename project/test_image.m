% Test Image Object Class

% Author: Matthew Knight
% File Name: test_image.m
% Date: 2017-11-15

% This class is for encapsulating an image and measured image characteristics
% for training and testing our recognition program for this class. It will
% simply contain the image itself along with a header containing which objects
% are within the image and where in the image they are located. This header will
% have to be coded in by hand for each image as a human needs to look at the
% image and determine the object data beforehand. We will save all the classes
% to an array that will get added to a .mat file that is saved to the repo. One
% will then need only to download the repository to have a slew of test images
% available.

classdef test_image
    properties
	I;				% The Actual image
	head;				% Header array
	note;				% String for any sort of note
    end
end

% Header information
