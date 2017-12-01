% Task 1: Compute Basis Images

% Author: Matthew Knight
% File Name: task1.m
% Date: 2017-11-14

n = 8;
dct = zeros(n);

for u = 1:n
    for x = 1:n
	dct(u,x) = dct_basis(n, u-1, x-1);
    end
end

figure;
for i = 1:n
    subplot(4,2,i);
    stem(dct(:,i));
    xlim([1 n]);
end

% Now to dot product every array with ever array

dots = zeros(n);
for row = 1:n
    for col = 1:n
        dots(row,col) = dot(dct(:,row), dct(:,col));
    end
end
