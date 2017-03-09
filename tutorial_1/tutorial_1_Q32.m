clear; clc;
%%%%%%% 3.2 Verify Addition of Sinusoids Using Complex Exponentials%%%%%%

% Specify parameters for plots
A = 5;
f0= 15;
T0 = 1/f0;

% Discretised sampling points for signals
t = linspace(-T0,2*T0,2000);

% Signals
x1 = A*cos(2*pi*f0*t + 0.5*pi); 
x2 = A*cos(2*pi*f0*t - 0.25*pi);
x3 = A*cos(2*pi*f0*t + 0.4*pi);
x4 = A*cos(2*pi*f0*t - 0.9*pi);

% Summation of signls
x5 = x1 + x2 + x3 + x4;

% Plots of signals
subplot(3,2,1)
plot(t,x1)
title('Plot of x1')
grid on

subplot(3,2,2)
plot(t,x2)
title('Plot of x2')
grid on

subplot(3,2,3)
plot(t,x3)
title('Plot of x3')
grid on

subplot(3,2,4)
plot(t,x4)
title('Plot of x4')
grid on

subplot(3,2,5)
plot(t,x5)
hold on
plot(t,A*cos(2*pi*f0*t))
title('Plot of x5')
grid on

% Complex arithmetic
Amp = [A A A A];
ph = [0.5 -0.25 0.4 -0.9]*pi;
Z = Amp.*exp(j*ph);
z1 = Z(1); z2 = Z(2); z3 = Z(3); z4 = Z(4);

% Add all the complex exponentials together
z5 = sum(Z);

zprint([z1 z2 z3 z4 z5])

figure(2)
zcat([z1 z2 z3 z4])
hold on
zvect([z5])