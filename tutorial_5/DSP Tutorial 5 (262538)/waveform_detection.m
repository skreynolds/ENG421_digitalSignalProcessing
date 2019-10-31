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

% Create modulated signal from 
modulated_signal = (1 + mm).*cc;

% Multiply the modulated signal by the carrier signal
demodulated_signal = modulated_signal.*cc;
figure(1)
showspec(demodulated_signal,fs)

% Creation of 3 term notch filter
f_notch = 2400;
w_notch = 2*pi*(f_notch/fs);
bb = [1 -2*cos(w_notch) 1];
[H,ww] = freqz(bb);
figure(2)
subplot(2,1,1)
plot(ww*fs/(2*pi),abs(H))
subplot(2,1,2)
plot(ww*fs/(2*pi),angle(H))
xlabel('FREQUENCY')

yy = firfilt(bb,demodulated_signal);
figure(3)
showspec(yy)

dd = amdemod(modulated_signal,fc,fs);

figure(4)
subplot(3,1,1)
plot(tt(3900:4100),mm(3900:4100))
title('Original Signal')
xlabel('time (sec)')
ylabel('Amplitude')
subplot(3,1,2)
plot(tt(3900:4100),yy(3900:4100))
title('Received Signal from Demodulation and Filtering')
xlabel('time (sec)')
ylabel('Amplitude')
subplot(3,1,3)
plot(tt(3900:4100),dd(3900:4100))
title('Received Signal form AMDEMOD')
xlabel('time (sec)')
ylabel('Amplitude')

figure(5)
subplot(3,1,1)
showspec(mm,fs)
title('Original Signal')
subplot(3,1,2)
showspec(yy,fs)
title('Received Signal from Demodulation and Filtering')
subplot(3,1,3)
showspec(dd,fs)
title('Received Signal form AMDEMOD')