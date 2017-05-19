% Clear and exisiting variables in the system and clear the workspace
clear; clc;

load echart.mat

x1 = echart(256-33,:);
bb1 = (1/7)*ones(1,7);
yy1 = conv(x1,bb1);
%yy1 = firfilt(bb1,x1);

figure(1)
subplot(2,1,1)
plot(x1)
subplot(2,1,2)
plot(yy1)

x2 = echart(256-99,:);
bb2 = [1 -1];
yy2 = conv(x2,bb2);
%yy2 = firfilt(bb2,x2);

figure(2)
subplot(2,1,1)
plot(x2)
subplot(2,1,2)
plot(yy2)