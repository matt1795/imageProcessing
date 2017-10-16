% Histogram Matching Function

% Author: Matthew Knight
% File Name: match.m
% Date: 2017-10-15

% This function returns an image I3 that is the image I1 histogram matched
% to I2

function I3 = match(I1, I2)

% set up buffer for I3
[m,n] = size(I1);
I3 = zeros(m,n);

% equalize I1
I = equalize(I1);

% now to figure out transform for I2 to equalization
[m, n] = size(I2);
p = histogram(I2)/(m*n);
s = zeros(1,256);
s(1) = p(1);

for i = 1:256
    if i > 1
        s(i) = s(i-1) + p(i);
    end
end

s = round(s*255);

% Invert the I2 equalization transform


T = NaN(1,256);

for i = 1:256
    if isnan(T(uint8(s(i) + 1)))
        T(uint8(s(i)) + 1) = i -1;
    end
end

% interpolate for any NaNs
for i = 1:256
    if isnan(T(i))
        p1 = i-1;
        for j = i:256
            if ~isnan(T(j))
                p2 = j;
                break;
            end
        end
        T(i) = ((T(p2) - T(p1))/(p2-p1)) + T(i -1);
    end
end

T = round(T);

% Map equalized image to I2's histogram
[m,n] = size(I3);

for i = 1:m
    for j = 1:n
        I3(i,j) = T(I(i,j)+1);
    end
end
I3 = uint8(I3);


        