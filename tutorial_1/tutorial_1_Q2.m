clear; clc;
%%%%%%%%%%%%%%%%%% 2.2 Sinusoidal Synthesis %%%%%%%%%%%%%%%%%%%%%%%%%

% Script runs the function and prints the results

fs = 200000;
dur = 0.25;

t = 0:1/fs:dur;

xx1 = sumcos([20], [1], fs, dur);
figure(1)
plot(t,xx1)

xx2 = sumcos([20 40], [1 1/2], fs, dur);
figure(2)
plot(t,xx2)

xx3 = sumcos([20 40 60 80], [1 -1 1 -1], fs, dur);
figure(3)
plot(t,xx3)