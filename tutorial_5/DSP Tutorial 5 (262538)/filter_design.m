% Clear any stored variables and the workspace
clear; clc;

L = 64; %-- length of the ????
fs = 8000; %-- set the sampling frequency

n = 0:L;
ww = 0:(pi/256):pi; %-- We only need positive frequencies

% Generate a filter h770 for the 770Hz component
h770 = (2/L)*cos((2*pi*770*n)/fs);
subplot(2,1,1)
stem(h770)
xlabel('n');
ylabel('Amplitude');
title('Filter coefficients for h770 filter')

H1 = freqz(h770,1,ww);

% Generate a filter h1336 for the 1336Hz component
h1336 = (2/L)*cos((2*pi*1336*n)/fs);
subplot(2,1,2)
stem(h1336)
xlabel('n');
ylabel('Amplitude');
title('Filter coefficients for h1336 filter')

H2 = freqz(h1336,1,ww);

ff = (ww/(2*pi))*fs;
figure(2)
plot(ff,abs(H1)); grid on;
xlabel('Frequency (Hz)')
ylabel('Amplitude')
hold on
stem([697, 770, 852, 941, 1209, 1336, 1477], ones(1,7))

ff = (ww/(2*pi))*fs;
figure(3)
plot(ff,abs(H2)); grid on;
xlabel('Frequency (Hz)')
ylabel('Amplitude')
