% Task 2: 2D DCT

% Author: Matthew Knight
% File Name: task2.m
% Date: 2017-11-14

n = 8;

% x, y, u, v
dcts = zeros(n,n,n,n);

for u = 1:n
    for v = 1:n
        for x = 1:n
            for y = 1:n
                dcts(x,y,u,v) = dct_basis2(n, u-1, v-1, x-1, y-1);
            end
        end
    end
end

dcts = dcts + 0.1734;
dcts = dcts/(2*0.1734);

fig1 = figure;
for i = 1:n
    for j = 1:n
        subplot(n,n, (i-1)*8 + j);
        imshow(dcts(:,:,i,j));
    end
end