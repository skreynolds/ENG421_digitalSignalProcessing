%%%%%%%%%%%% 2.1 MATLAB Synthesis of Chirp Signals %%%%%%%%%%%%%%%

% Clear the workspace and any stored variables
clear; clc;

fsamp = 8000;
dt = 1/fsamp;
dur = 1.8;
tt = 0:dt:dur;
psi = 2*pi*(100 + 200*tt + 500*tt.*tt);
xx = real(7.7*exp(j*psi));

sound(xx,fsamp);