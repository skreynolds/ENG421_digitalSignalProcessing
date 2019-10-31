% Clear variables, clear the workspace, and close all figures
clear; clc; close all;

load lenna.mat

% Selection of the area on which to zoom
xx_sub = xx(100:150,150:200);

% Method 1 - Zooming by repeating values
xx_new = zeros(200,200);
a = 1;
b = 1;

for i = 1:50
    a = ( (i-1)*4 + 1 ):( (i-1)*4 + 1 + 3 );
    for j = 1:50
        b = ( (j-1)*4 + 1 ):( (j-1)*4 + 1 + 3 );
        xx_new(a,b) = xx_sub(i,j);
    end
end

show_img(xx_new,1)

% Method 2 - Zooming by filtering with linear interpolator
yy = zero_insert(xx_sub); %-- create matrix to be filtered

bk = [1/4 2/4 3/4 1 3/4 2/4 1/4]; %-- linear interpolation filter
ylin = conv2(yy,bk); %-- filter rows
ylin = conv2(ylin,bk'); %-- filter columns
show_img(ylin,2)

% Method 3 - Zooming by filtering with sinc filter

% Sinc filter creation
k = 0:22;
wk = 0.54 - 0.46*cos((2*pi*k)/(22));
bkk = ( (sin((k-11)*(pi/4)))./((k-11)*(pi/4)) ).*wk;
bkk(12) = 1;

xs_filt = conv2(yy,bkk); %-- filter rows
xs_filt = conv2(xs_filt,bkk'); %-- filter columns
show_img(xs_filt,3)