%%%%%%%%%%%%%%%%%%%%%%%% 2.3 Piano Keyboard %%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Clear any stored variables and clear the workspace
clear; clc;

% Initialise the parameters to be used for the script
A = 100;
f440 = 440;

% Specify the sampling frequency and sampling period
fs = 8000;
Ts = 1/fs;

% Generate the time vector for the discrete points at which the
% discrete sample will be generated.
tt = (0:Ts:2);

% Generate the discrete sample of the note
n = 7;
fe5 = f440*2^(7/12);
xx = A*cos(2*pi*fe5*tt);

% Send the note to the D-A converter
sound(xx,fs)