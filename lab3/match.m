% Histogram Matching Function

% Author: Matthew Knight
% File Name: match.m
% Date: 2017-10-15

% This function returns an image I3 that is the image I1 histogram matched
% to I2

function I3 = match(I1, I2)

I3 = equalize(I1);

[m, n] = size(I2);

p = histogram(I1)/(m1*n1);
s = zeros(1,256);
s(1) = p(1);

for i = 1:256
    if i > 1
        s(i) = s(i-1) + p(i);
    end
end

s = round(s*255);
T = zeros(1,256);
count = 0;
for i = 1:256
    if count < i
        T(s(i)) = i-1;
    end
    count = count + 1;
end

for i = 1:m
    for j = 1:n
        I3(i,j) = T(I1(i,j)+1);
    end
end

% Test stuff
s = [0 0 1 2 5 6 7 7];
T = NaN(1,8);
count = 0;

for i = 1:8
    if ~ISNAN(s(i))
       T(uint8(s(i)) + 1) = i -1;
        count = count + 1;
    end
end

        