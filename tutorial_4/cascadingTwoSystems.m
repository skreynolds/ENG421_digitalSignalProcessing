%%%%%%%%%%%%%%%%% 3.5 Cascading Two Systems %%%%%%%%%%%%%%%%%%%

% Clear the workspace and any stored variables
clear; clc;

L = 50;

% Create a vector which will be used to create samples
nn = 0:(L-1);

% Initialise the parameters used to define the input signal
A = 7;
ph = pi/3;
ww = 0.125*pi;

% Take discrete samples of the cosine
xx = A*cos(ww*nn + ph);

% Passing the signal through the squaring filter
ww = xx.^2;

% Create pass the squared signal through a differencing filter
bb = [1,1];
yy = firfilt(bb,ww);

% Create plots to compare the inpust signal with the output signal
figure(1)
subplot(3,1,1)
plot(nn,xx)

subplot(3,1,2)
plot(nn,ww)

subplot(3,1,3)
plot(nn,yy(1:50))

figure(2)
subplot(3,1,1)
specgram(xx)
subplot(3,1,2)
specgram(ww)
subplot(3,1,3)
specgram(yy)