%%%%%%%%%%%%% 3.3 Linearity of the Filter %%%%%%%%%%%%%%%%%%

% Clear the worksapce and any stored variables
clear; clc;

L = 50;

% Create a vector which will be used to create samples
nn = 0:(L-1);

% Initialise the parameters used to define the input signal
A = 8;
ph = 0;
ww = 0.25*pi;

% Take discrete samples of the cosine
xb = A*cos(ww*nn + ph);

% Create the filter and the associated response to teh input signal
bb = [5 5];
yb = firfilt(bb,xb);

% Create plots to compare the inpust signal with the output signal
subplot(2,1,1)
plot(nn,xb)

subplot(2,1,2)
plot(nn,yb(1:50))