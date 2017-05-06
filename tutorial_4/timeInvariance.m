%%%%%%%%%%%%%%% 3.4 Time-Invariance of the Filter %%%%%%%%%%%%%%%%%%%

% Clear the workspace and clear any stored variables
clear; clc;

L = 50;

% Create a vector which will be used to create samples
nn = 0:(L-1);

% Initialise the parameters used to define the input signal xa
A_a = 7;
ph_a = pi/3;
ww_a = 0.125*pi;

% Take discrete samples of the cosine
xs = A_a*cos(ww_a*(nn-3) + ph_a);

% Create the filter and the associated response to teh input signal
bb = [5 -5];
ys = firfilt(bb,xs);

% Create plots to compare the inpust signal with the output signal
subplot(2,1,1)
plot(nn,xs)
xlabel('sample')

subplot(2,1,2)
plot(nn,ys(1:50))
xlabel('sample')