%%%%%%%% 2.1 Fequency Response of the Three-Point Averager %%%%%%%%%%%

% Clear the workspace and any stored variables
clear; clc;

% This script is provided by the tutorial assignment
bb = 1/3*ones(1,3);
ww = -pi:(pi/200):pi;
H = freqz(bb,1,ww);
subplot(2,1,1)
plot(ww, abs(H))
subplot(2,1,2)
plot(ww, angle(H))
xlabel('NORMALIZED FREQUENCY')