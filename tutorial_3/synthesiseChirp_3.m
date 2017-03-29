%%%%%%%%%%%%%%%%%%% 3.1 Synthesize a Chirp %%%%%%%%%%%%%%%%%%%%%%%

% Clear the workspace and any stored variables
clear; clc;

% Set the duration
dur = 3;

% Set the sampling frequency
fsamp = 8000;

% Set the starting frequency and the ending frequency
f1 = 15000;
f2 = 300;

% Create the chirp signal using mychirp
xx = mychirp(f1,f2,dur,fsamp);

% Pass the discrete time signal to the D-to-A converter
sound(xx,fsamp)