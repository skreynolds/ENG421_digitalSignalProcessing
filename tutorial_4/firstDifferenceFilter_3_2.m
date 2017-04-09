%%%%%%%%%%%%% 3.3 Linearity of the Filter %%%%%%%%%%%%%%%%%%

% Clear the worksapce and any stored variables
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

% Create a linearly scaled version of xx
xa = 2*xx;

% Create the filter and the associated response to teh input signal
bb = [5 5];
ya = firfilt(bb,xa);

% Create plots to compare the inpust signal with the output signal
subplot(2,1,1)
plot(nn,xa)

subplot(2,1,2)
plot(nn,ya(1:50))