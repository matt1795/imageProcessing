% Task 1: Uniform Quantizer

% Author: Matthew Knight
% File Name: task1.m
% Date: 2017-10-23

addpath('../images/');

% Quantize barbara from 8 to 5 and 3 bit.
I1 = imread('barbara.png');

[m,n] = size(I1);

I2 = bitshift(I1, -3);
I3 = bitshift(I1, -5);

fig1 = figure;
subplot(1,3,1);
imshow(I1);
title('8-bit Quantization');

subplot(1,3,2);
imshow(I2, [0 31]);
title('5-bit Quantization');

subplot(1,3,3);
imshow(I3, [0 7]);
title('3-bit Quantization');
saveas(fig1, 'uniform_quanitizer.png');

% SNR vs quantization bits

B = 1:7;
SNR = 10*log(2.^(2*B));

fig2 = figure;
plot(B, SNR);
title('SNR vs Quantization Resolution');
xlabel('Quantization Resolution (bits)');
ylabel('SNR (dB)');
saveas(fig2, 'snr.png');

% Compare barbara histogram to flat
fig3 = figure;
subplot(1,2,1);
imshow(I1);
subplot(1,2,2);
imhist(I1);

saveas(fig3, 'barb_not_uniform.png');

% Find and plot the error due to quantization for 5 bpp
fig4 = figure;
I2 = bitshift(I2, 3);
I4 = I1 - I2;
imhist(I4);


% Plot the input decision intervals versus the reconstruction levels 
% for the uniform quantizer

in = uint8(0:255);
out = bitshift(in, -5);

fig5 = figure;

plot(in, out);
grid on;
title('8-bit to 3-bit Quantization');
xlabel('Input Value');
ylabel('Output Value');

saveas(fig5, 'quatizer_transfer_function.png');
