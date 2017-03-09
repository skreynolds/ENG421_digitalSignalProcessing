clear; clc;
%%%%%%%%%%%%%%%%%% 2.1 Complex Numbers %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% (a) We can define complex numbers z1 and z2 and plot them with zvect
% and print them with zprint

z1 = -1 +j*0.3;
z2 = 0.8 + j*0.7;

figure(1)
zvect([z1 z2])
title('Question 2.1 (a) Plot')
zprint([z1 z2])

% (b) Find the conjugate and inverse for z1 and z2

z1_inv = 1/z1;
z2_inv = 1/z2;

z1_conj = conj(z1);
z2_conj = conj(z2);

figure(2)
zvect([z1_inv z2_inv z1_conj z2_conj])
title('Question 2.1 (b) Plot')
zprint([z1_inv z2_inv z1_conj z2_conj])


% (c) Compute z1 + z2 and plot. Use zcat to show the sum as vectors
% head to tail and use zprint to display the result numerically.

z_add = z1 + z2;

figure(3)
zvect([z_add])
title('Question 2.1 (c) Plot')
hold on
zcat([z1 z2])
zprint([z1 z2])

% (d) Compute z1.z2 and z1/z2 and plot. Use zvect plot function to show
% how the angles of z1 and z2 determine

z_mult = z1*z2;
z_div = z1/z2;

figure(4)
zvect([z_mult z_div])
title('Question 2.1 (d) Plot')
zprint([z_mult z_div])