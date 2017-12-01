% Task 4: High Pass Filter Design

% Author: Matthew Knght
% File Name: task4.m
% Date: 2017-10-30

addpath('../images');

I = imread('lena.tiff');

H=ones(M,N);
radius=30;
D=distmatrix(M,N);
ind=D<=radius;
H(ind)=0;
a=0;
b=1;
HD=double(a+(b.*H));
imshow(HD); title('ideal high pass filter');

DFT_Filt = fftshift(HD).* i_dft;
I2=uint8(real(ifft2(DFT_Filt)));

figure(2)
imshow(I2);