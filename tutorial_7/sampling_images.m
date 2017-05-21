% Clear any existing variables, clear the workspace, and close figures
clear; clc; close all;

% Load the baboon image and employ downsampling
load baboon.mat
show_img(xx,1)
xs = imsample(xx,4); %-- Sample every fourth point in the image
show_img(xs,2)

% Load the zone plate image and downsample to observe aliasing
x1 = imzoneplate; %-- Create the zoneplate image
show_img(x1,3)
[M,N] = size(x1);
p = 2;
xp = x1(1:p:M,1:p:N); %-- Downsample the image
show_img(xp,4)

% Load the lenna image and downsample to observe the lack of
% aliasing
load lenna.mat
show_img(xx,5)
[M,N] = size(xx);
p = 2;
xp = xx(1:p:M,1:p:N); %-- Downsample the image
show_img(xp,6)