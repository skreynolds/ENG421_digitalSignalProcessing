%%%%%%%%%%%%%%%%%% 3.3 More on Spectrograms %%%%%%%%%%%%%%%%%%%%%%%

% Clear the workspace and clear stored variables
clear; clc;

% Specify parameters for signal generation
delf = 32;
fsamp = 8000;
dur = 0.26;
f0 = 2000;
A = 1;
B = 1;

% Generate signal
xx = beat(A,B,f0,delf,fsamp,dur);

plot(xx)