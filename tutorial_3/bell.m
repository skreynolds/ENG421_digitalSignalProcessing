function xx = bell(ff, Io, tau, dur, fsamp)
% BELL produces a bell sound
% usage: xx = bell(ff, Io, tau, dur, fsamp)
% ff = frequency vector (containing fc and fm)
% Io = scale factor for modulation index
% tau = decay parameter for A(t) and I(t)
% dur = duration (in sec.) of the output signal
% fsamp = sampling rate
    
    % Create the time vector
    tt = 0:(1/fsamp):dur;
    
    % Specify the parameters to be used
    A = 1; % amplitude
    phm = -pi/2; % phase constant
    phc = -pi/2; % phase constant
    fc = ff(1);
    fm = ff(2);
    
    % Create the exponential decay envelope
    envel = bellenv(tau, dur, fsamp);
    
    % Create the envelope functions A(t) and I(t)
    At = A*envel;
    It = Io*envel;
    
    % Create bell signal
    arg = 2*pi*fc*tt + It.*real(exp(j*(2*pi*fm*tt + phm))) + phc;
    xx = At.*real(exp(j*arg));
end