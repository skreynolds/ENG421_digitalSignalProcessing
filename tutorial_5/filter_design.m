% Clear any stored variables and the workspace
clear; clc;

L = 64; %-- length of the ????
fs = 8000; %-- set the sampling frequency

n = 0:L;

% Generate a filter h770 for the 770Hz component
h770 = (2/L)*cos((2*pi*770*n)/fs);
subplot(2,1,1)
stem(h770)

% Generate a filter h1336 for the 1336Hz component
h1336 = (2/L)*cos((2*pi*1336*n)/fs);
subplot(2,1,2)
stem(h1336)


ww = 0:(pi/256):pi; %-- We only need positive frequencies
ff = (ww/(2*pi))*fs;
H = freqz(h1336,1,ww);
figure(2)
plot(ff,abs(H)); grid on;
