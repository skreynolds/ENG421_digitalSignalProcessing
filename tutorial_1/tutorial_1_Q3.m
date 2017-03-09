clear; clc;
%%%%%% 3.1 Representation of Sinusoids with Complex Exponentials %%%%%%

% Specify the parameters of the signal
A = 3;
phase = -0.4*pi;
f0 = 1250;
w0 = 2*pi*f0;

% Specify the discrete points the signal will be sampled at
T0 = 1/f0;
t = linspace(-T0,2*T0,2000);

% Create the signal
x = A*exp(j*(w0*t + phase));

subplot(2,1,1)
plot(t,real(x));
title('Real part of x(t)')

subplot(2,1,2)
plot(t,imag(x));
title('Imaginary part of x(t)')