%%%%%%%%% 2.1 Frequency Response of the Three-Point Averager %%%%%%%%%%%
% Code written by Shane Reynolds

% Clear the workspace and any stored variables
clear; clc;

% Initialise parameters that will be used for the averager
ww = linspace(-pi,pi,400);

% Implementation of of the frequency response function
% (This is the same as the transfer function - different noteation?)
H = ( (2*cos(ww) + 1)/3 ).* exp(-j*ww);

% Plot the Magnitude of the frequency response
subplot(2,1,1)
plot(ww,abs(H))
xlabel('frequency (rad/sec)')
ylabel('magnitude |H|')

% Plot the Phase Angle Shift of the frequency response
subplot(2,1,2)
plot(ww,angle(H))
xlabel('frequency (rad/sec)')
ylabel('phase shift (rad)')