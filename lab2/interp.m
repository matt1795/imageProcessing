function val = interp(type, loc, mat)

% bilinear interpolation function

[m,n] = size(mat);

x = double(loc(1)); y = double(loc(2));

% if out of bounds
if x < 1 || x > m
    val = 0;
    return;
end
if y < 1 || y > n
    val = 0;
    return;
end

p1 = floor(loc);
p2 = ceil(loc);

x1 = double(p1(1)); y1 = double(p1(2));
x2 = double(p2(1)); y2 = double(p2(2));

% process obtion
if strcmp(type, '1d')
    r = round(loc);

    xr = r(1); yr = r(2);

    vy = (y - y1)*(mat(xr,y2) - mat(xr,y1))/(y2 - y1);
    vx = (x - x1)*(mat(x2,yr) - mat(x1,yr))/(x2 - x1);

    val = (vx + vy)/2;
    
elseif strcmp(type, 'bilinear')
    dx = [x2 - x, x - x1];
    dy = [y2 - y; y - y1];
    A = [   double(mat(x1,y1)) double(mat(x1,y2));
	    double(mat(x2,y1)) double(mat(x2,y2))];
    val = uint8(dx*A*dy);
end
