% Task 3: Low-Pass Filter Design

% Author: Matthew Knght
% File Name: task3.m
% Date: 2017-10-30

addpath('../images');

I = imread('lena.tiff');

[M,N]=size(I);
D=distmatrix(M,N);
H=zeros(M,N);
radius =35;
ind=D<= radius;
H(ind)=1;
HD=double(H);
figure(1);
imshow( fftshift(HD)),title('ideal low pass filter');
i_dft = fft2(I);
DFT_Filt = fftshift(HD).* i_dft;

figure(3)
I2=uint8(real(ifft2(DFT_Filt)));
imshow(I2);

% Gaussian Low Pass
Sigma= 30;
H_gua= exp(-(D.^2)/(2*(Sigma^2)));
figure, imshow(fftshift(H_gua)), title('Gausian Low Pass');
DFT_Filt = fftshift(H_gua).* i_dft;
I3=uint8(real(ifft2(DFT_Filt)));

figure(4)
imshow(I3);

% Butterworth filter

d0=35, n=3;
H_but=1./( 1 + (D./d0) .^(2*n) );

figure(5), imshow(fftshift(H_but)), title('Butterworth Low Pass');
DFT_Filt = fftshift(H_but).* i_dft;
I4=uint8(real(ifft2(DFT_Filt)));

figure(6)
imshow(I4);
