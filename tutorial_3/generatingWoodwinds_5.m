%%%%%%%%% 5.1 Generating the Envelopes for Woodwinds %%%%%%%%%%%%

% Clear the work space and any stored variables
clear; clc;

fsamp = 8000;
Ts = 1/fsamp;
delta = 1e-4;
tt = delta:Ts:0.5;
[y1, y2] = woodwenv(0.1, 0.35, 0.05, fsamp);
subplot(2,1,1), plot(tt,y1), grid on
subplot(2,1,2), plot(tt,y2), grid on