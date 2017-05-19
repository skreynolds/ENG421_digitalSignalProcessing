% Clear any stored variables and the workspace
clear; clc;

Ts = 50;

n = 0:255; %-- the discrete integer vector
discrete_sinusoid = sin(n*Ts); %-- the discrete sampled sinusoid
test_img = repmat(discrete_sinusoid,256,1); %-- the test image

figure(1)
plot(discrete_sinusoid)

show_img(test_img,2)

load lenna.mat

figure(3)
plot(xx(200,1:end))