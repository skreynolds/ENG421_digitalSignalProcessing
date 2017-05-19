% Clear any stored variables and clear the workspace
clear; clc;

load lenna.mat

% Filter Number 1
bh1 = ones(1,3)/3;
bv1 = bh1';
y1_1 = conv2(xx,bh1);
y2_1 = conv2(y1_1,bv1);

% Filter Number 2
bh2 = ones(1,7)/7;
bv2 = bh2';
y1_2 = conv2(xx,bh2);
y2_2 = conv2(y1_2,bv2);

% Filter Number 3
bh3 = [1 -1];
y1_3 = conv2(xx,bh3);

% Filter Number 4
bh4 = [-1 3 -1];
y1_4 = conv2(xx,bh4);

% Filter Number 5
bh5 = [-1 1 1 1 -1];
bv5 = bh5';
y1_5 = conv2(xx,bh5);
y2_5 = conv2(y1_5,bv5);

show_img(xx,1)
show_img(y2_1,2)
show_img(y2_2,3)
show_img(y1_3,4)
show_img(y1_4,5)
show_img(y2_5,6)