%%%%%%%%%%%%%%%%% 3.2 First Difference Filter %%%%%%%%%%%%%%%%%%%
% Code written by Shane Reynolds

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

% Create the filter and the associated response to teh input signal
bb = [5 -5];
yy = firfilt(bb,xx);

% Create plots to compare the inpust signal with the output signal
subplot(2,1,1)
plot(nn,xx)
xlabel('sample number')

subplot(2,1,2)
plot(nn,yy(1:50))
xlabel('sample number')
