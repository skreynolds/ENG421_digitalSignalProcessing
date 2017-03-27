function xx = mychirp(f1,f2,dur,fsamp)
% usage: xx = mychirp(f1,f2,dur,fsamp)
% f1 = starting frequency
% f2 = ending frequency
% dur = total time duration
% fsamp = sampling frequency (OPTIONAL: default is 8000)

    if (nargin < 4) %--Allow optional input arguement
        fsamp = 8000;
    end
    
    dt = 1/fsamp;
    tt = 0:dt:dur;
    
    f0 = f1;
    mu = (f2 - f1)/(2*dur);
    
    psi = 2*pi*(mu*tt.^2 + f0*tt + 100);
    
    xx = real(7.7*exp(j*psi));
    
end