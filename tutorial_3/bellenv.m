function yy = bellenv(tau, dur, fsamp)
% BELLENV produces envelope function for bell sounds
% usage: yy = bellenv(tau, dur, fsamp)
% tau = time constant
% dur = duration of the envelope
% fsamp = sampling frequency
% returns:
% yy = decaying exponential envelope
    tt = 0:(1/fsamp):dur;
    yy = exp(-tt./tau);
end