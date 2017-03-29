function [xx, tt] = beat(A, B, fc, delf, fsamp, dur)
% BEAT compute samples of the sum of two cosine waves
% usage:
% [xx, tt] = beat(A, B, f, delf, fsamp, dur)
% A = amplitude of lower frequency cosine
% B = amplitude of higher frequency cosine
% fc = center frequency
% delf = frequency difference
% fsamp = sampling rate
% dur = total time duration in seconds
% xx = output vector of samples
%--OPTIONAL Output:
% tt = time vector corresponding to xx
    
    % Create the time vector
    tt = 0:(1/fsamp):dur;
    
    % Create the lower frequency waveform
    xl = A*exp(j*2*pi*(fc - delf)*tt);
    % Create the upper frequency waveform
    xu = B*exp(j*2*pi*(fc + delf)*tt);
    
    % Create the beat signal
    xx = real(xl + xu);
end