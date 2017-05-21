% Clear any sotred variables, clear the workspace, and close any figures
clear; clc; close all;

xss = zeros(1,19);
samp = [1 3 -2 4 2 -1 -3];
xss(1:3:19) = samp;

coeff = [1/3 2/3 1 2/3 1/3];
output = firfilt(xss,coeff);

subplot(2,1,1)
stem(xss)
xlabel('time')
title('Original signal padded with zeros')
axis([0 25 -4 4])

subplot(2,1,2)
stem(output)
xlabel('time')
title('Interpolated signal')
axis([0 25 -4 4])