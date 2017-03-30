%%%%%%%%%%%%%% 5.3 Clarinet Envelopes %%%%%%%%%%%%%%%%%%%%%%
beta = 4;
alpha = 2 - beta;

fsamp = 8000;
Ts = 1/fsamp;
delta = 1e-4;
tt = delta:Ts:0.5;
[y1, y2] = woodwenv(0.1, 0.35, 0.05, fsamp);

I = scale(y2,alpha,beta);
