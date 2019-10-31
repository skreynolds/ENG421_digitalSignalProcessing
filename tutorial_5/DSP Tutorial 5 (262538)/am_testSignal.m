% Clear any variables and the current workspace
clear; clc;

% Set up parameters for signal generation
dur = 1; %-- Set up the signal duration
fs = 8000; %-- Set up the sampling frequency
tt = 0:1/fs:dur; %-- Set up the discrete time vector

fc = 1200;
cc = cos(2*pi*fc*tt);

fm = 100;
Am = 0.8;
mm = Am*cos(2*pi*fm*tt);

modulated_signal = (1 + mm).*cc;

figure(1)
plot(tt(1:200),modulated_signal(1:200))
hold on
plot(tt(1:200),mm(1:200))
legend('Modulated Signal','Message Signal')
xlabel('time (sec)')
ylabel('Amplitude')

figure(2)
subplot(3,1,1)
showspec(mm,fs)
title('Spectrum plot of Message Signal')
subplot(3,1,2)
showspec(cc,fs)
title('Spectrum plot of Carrier Signal')
subplot(3,1,3)
showspec(modulated_signal,fs)
title('Spectrum plot of Modulated Signal')
