% Clear any stored variables, clear the workspace and close any figures
clear; clc; close all;

% Gaussian filter coefficients
bb = [exp( -0.075*((0:9) - 10).^2 ) 1.1 exp( -0.075*((11:20) - 10).^2 )];
figure(1)
subplot(2,1,1)
stem(bb) %-- plot the filter coefficients (i.e. the impulse response)

[H,W] = freqz(bb);
subplot(2,1,2)
plot(W,abs(H))

bk = cos(0.4*pi*((0:20) - 10)).*exp(-0.13*((0:20) - 10).^2);
figure(2)
subplot(2,1,1)
stem(bk)

[Hk,Wk] = freqz(bk);
subplot(2,1,2)
plot(Wk, abs(Hk))

load baboon.mat

y1_1 = conv2(xx,bb);
y2_1 = conv2(y1_1,bb');

y1_2 = conv2(xx,bk);
y2_2 = conv2(y1_2,bk');

show_img(y2_1,3)
show_img(y2_2,4)