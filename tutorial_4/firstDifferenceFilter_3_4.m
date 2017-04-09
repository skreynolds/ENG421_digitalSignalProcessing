%%%%%%%%%%%%%% 3.3 Linearity of the Filter %%%%%%%%%%%%%%%%%

% Clear the worksapce and any stored variables
clear; clc;

L = 50;

% Create a vector which will be used to create samples
nn = 0:(L-1);

% Initialise the parameters used to define the input signal xa
A_a = 7;
ph_a = pi/3;
ww_a = 0.125*pi;

% Take discrete samples of the cosine
xx = A_a*cos(ww_a*nn + ph_a);

% Create a linearly scaled version of xx
xa = 2*xx;

% Initialise the parameters used to define the input signal xb
A_b = 8;
ph_b = 0;
ww_b = 0.25*pi;

% Take discrete samples of the cosine
xb = A_b*cos(ww_b*nn + ph_b);

% Create an additive signal
xc = xa + xb;

% Create the filter and the associated response to teh input signal
bb = [5 5];
yc = firfilt(bb,xc);

% Create plots to compare the inpust signal with the output signal
subplot(2,1,1)
plot(nn,xc)

subplot(2,1,2)
plot(nn,yc(1:50))