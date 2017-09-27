function I2 = rot(I, a)

% this function rotations image I by a degrees and returns resultant image I2
a = a*180/pi;
[m,n] = size(I1);
I2 = I1;

T = [cos(a) sin(a) 0;
     -sin(a) cos(a) 0;
     0 0 1];

T = inv(T);

for u = 1:m
    for v = 1:n
	[x,y,z] = [u, v, 1]*T;
	I2(u,v) = interp('bilinear', [x, y], I1);
    end
end
