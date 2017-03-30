function yy = clarinet(f0, Aenv, Ienv, dur, fsamp)
%CLARINET produce a clarinet note signal
% usage: yy = clarinet(f0, Aenv, Ienv, dur, fsamp)
% where:
% f0 = note frequency
% Aenv = the array holding the A(t) envelope
% Ienv = the array holding the I(t) envelope
% dur = the amount of time the signal lasts
% fsamp = the sampling rate
    
    % Create time vector
    tt = 1e-4:(1/fsamp):dur;
    
    % Set up alpha and beta for use in scaling function
    alpha = -2;
    beta = 4;
    
    % Scale the I(t) envelope
    I_new = scale(Ienv,alpha,beta);
    
    % Determine the fc and fm parameters
    fc = 2*f0;
    fm = 3*f0;
    phm = -pi/2;
    phc = -pi/2;
    
    % Create the clarinet sound
    arg = 2*pi*fc*tt + I_new.*real(exp(j*(2*pi*fm*tt + phm))) + phc;
    yy = Aenv.*real(exp(j*arg));
end