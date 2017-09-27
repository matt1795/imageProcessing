function I2 = rot(I1, a)

% this function rotations image I by a degrees and returns resultant image I2
a = -a*pi/180;
[m,n] = size(I1);
I2 = I1;

T = [cos(a) sin(a) 0;
     -sin(a) cos(a) 0;
     0 0 1];

for u = 1:m
    for v = 1:n
    p = [u, v, 1]/T;
	I2(u,v) = interp('bilinear', p, I1);
    end
end
