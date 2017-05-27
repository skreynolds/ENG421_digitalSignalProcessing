% Clear any stored variables, clear the workspace, and close all figures
clear; clc; close all;

% Load the images into the workspace
load tools.mat

% Downsample the image
xs = imsample(xx,4);

% Create a zero hold interpolation filter
bs = ones(1,4);

% Filter the downsized data
yhold = conv2(xs,bs);
hold_final = conv2(yhold,bs');

% Show all three images
show_img(xs,1) %-- original image
show_img(yhold,2) %-- horizontal filter
show_img(hold_final,3) %-- horizontal and vertical filter

% Linear interpolation filter
bk = [1/4 2/4 3/4 1 3/4 2/4 1/4];

% Filter the downsize data uing the linear filter
ylin = conv2(xs,bk); %-- filter rows
ylin = conv2(ylin,bk'); %-- filter columns
show_img(ylin,4)

% Determine the frequency response for the filter
[H,W] = freqz(bk);
figure(5)
plot(W,abs(H),'b')
hold on
plot(-W,abs(H),'b')
xlabel('Frequency (rad)')
ylabel('Amplitude')

% Lowpass sinc function filter
k = 0:22;
wk = 0.54 - 0.46*cos((2*pi*k)/(22));
bkk = ( (sin((k-11)*(pi/4)))./((k-11)*(pi/4)) ).*wk;
bkk(12) = 1;

% Filter the downsized image using the low pass mdoified
% sinc filter
xs_filt = conv2(xs,bkk); %-- filter rows
xs_filt = conv2(xs_filt,bkk'); %-- filter columns

show_img(xs_filt,6)

[H,W] = freqz(bkk);
figure(7)
plot(W,abs(H))
xlabel('Frequency (rad)')
ylabel('Amplitude')