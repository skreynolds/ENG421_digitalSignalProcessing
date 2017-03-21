%%%%%%%%%%% 2.2 Theory of Sampling %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Clear stored variables and the workspace
clear; clc;

% Specify the parameters for the task
A = 100;
w0_1 = 2*pi*1100;
ph_1 = 0;

% Specify the sampling rate and the sampling period
fs = 8000;
Ts = 1/fs;

% Specify the time vector for the signal duration
tt = (0:Ts:2);

% The discrete time sample of the analog signal A*cos(w_0*t + ph)
x1 = A*cos(w0_1*tt + ph_1);

% Listen to the sound of the dsicrete time sampled x1
sound(x1,fs)
pause(3);

% The discrete time sample of the analog signal with a phase shift of
% pi/3 and a different angular frequency
w0_2 = 2*pi*1650;
ph_2 = pi/3;

x2 = A*cos(w0_2*tt + ph_2);

% Combining x1 and x2 to listen to them side by side
xx = [x1 zeros(1,2000) x2];
sound(xx,fs)
pause(5)

% Sending the vector xx through the D-A at double the sampling rate
sound(xx,2*fs)
