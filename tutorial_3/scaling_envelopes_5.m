ynorm = 0.5 + 0.5*sin(pi*[0:0.1:1]);
subplot(2,1,1), plot(ynorm)
alpha = -5; beta = 3;
ynew = alpha*ynorm + beta;    %<---------Linear re-scaling
subplot(2,1,2), plot(ynew)
max(ynorm), min(ynorm)        %<---------ECHO the values
max(ynew), min(ynew)