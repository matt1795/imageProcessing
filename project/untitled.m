
addpath('faces/');

% Get list of all BMP files in this directory
% DIR returns as a structure array.  You will need to use () and . to get
% the file names.
imagefiles = dir('faces/*.png');      
nfiles = length(imagefiles);    % Number of files found

faceDetector = vision.CascadeObjectDetector;

for i=1:nfiles
    currentfilename = imagefiles(i).name;
    currentimage = imread(currentfilename);
    bboxes = step(faceDetector, currentimage);


    IFaces = insertObjectAnnotation(currentimage, 'rectangle', bboxes, 'Face');   
    figure, imshow(IFaces), title('Detected faces');
    
    if (isempty(bboxes))
        disp("NO ONE WAS FOUND OH DEAR LORD");
    else
        prompt = 'Who dis?\n';
        str = input(prompt, 's');
        
    end
    images{i} = currentimage;
end




