% Clear any stored variables and clear the workspace
clear; clc;

load lenna.mat

n = 21;

bh = ones(1,n)/n;
y1 = conv2(xx,bh);
show_img(xx,1)
show_img(y1,2)

bv = ones(n,1)/n;
y2 = conv2(y1,bv);
show_img(y2,3)