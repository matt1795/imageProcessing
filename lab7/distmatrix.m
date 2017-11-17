% Distance Matrix Function

% Author: Matthew Knight
% File Name distmatrix.m
% Date: 2017-10-30

function y = distmatrix(m,n)

    y = zeros(m,n);

    for i = 1:m
        for j = 1:n
            y(i,j) = sqrt((double(i) - m/2 - 0.5)^2 + (double(j) - n/2 - 0.5)^2);
        end
    end

end

