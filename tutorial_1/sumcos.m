function xx = sumcos(f, Z, fs, dur)
% SUMCOS Function to systhesise a sum of cosine waves
% Usage:
%   xx = sumcos(f, Z, fs, dur)
%   f = vector of frequencies
%   Z = vector of complex exponentials
%   fs = the sampling rate in Hz
%   dur = total time duration of signal
%
%   Note: f and Z must be the same length.
%       Z(1) corresponds to frequency f(1)
%       Z(2) corresponds to frequency f(2)
    
    % We need to set the sampling vector according to fs
    t_samp = 0:1/fs:dur;
    t_len = length(t_samp);
    xx = sum(real(repmat(Z',1,t_len).*exp(j*2*pi*f'*t_samp)),1);
end