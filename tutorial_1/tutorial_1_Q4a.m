%%%%%%%%%%%%%%%%%%%%%%%%% 4 Periodic Waveforms %%%%%%%%%%%%%%%%%%%%%%%%%
clear; clc;

% fundamental frequency
f0 = 25;
Tmax = 1/f0;

% sampling frequency
fs = 20000;
dur = 2*Tmax;
t = 0:1/fs:dur;

% Set up the vector of integers for the number of cosines
N1 = 2*[0:4]+1; % 5 cosines
N2 = 2*[0:9]+1; % 10 cosines
N3 = 2*[0:24]+1; % 25 cosines

% Create the frequency and Zk vectors for N = 5
f1 = N1*f0;
Z1 = j./N1;
x1 = sumcos(f1,Z1,fs,dur); % Create plot for the N = 5
subplot(3,1,1)
plot(t,x1)
title('5 Cosines')

% Create the frequency and Zk vectors for N = 10
f2 = N2*f0;
Z2 = j./N2;
x2 = sumcos(f2,Z2,fs,dur); % Create plot for the N = 10
subplot(3,1,2)
plot(t,x2)
title('10 Cosines')

% Create the frequency and Zk vectors for N = 25
f3 = N3*f0;
Z3 = j./N3;
x3 = sumcos(f3,Z3,fs,dur); % Create plot for the N = 25
subplot(3,1,3)
plot(t,x3)
title('25 Cosines')