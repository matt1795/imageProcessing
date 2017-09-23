function I2 = neggaT(I1, T)

% Pixels in I1 are replaced by their negative value if they are below threshold
% T. Otherwise they are left alone. I2 is the resultant image.

[m, n] = size(I1);
I2 = zeros(m, n);

for row = 1:m
    for col = 1:n
	if I1(row,col) < T
	    I2(row,col) = -I1(row,col);
	end else
	    I2(row,col) = I1(row,col);
	end
    end
end
