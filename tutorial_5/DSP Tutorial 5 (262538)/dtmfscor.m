function ss = dtmfscor(xx, freq, L, fs)
% DTMFSCOR
% ss = dtmfscor(xx, freq, L, [fs])
% returns   1 (TRUE) if freq is present
%           0 (FALSE) if freq is not present
% xx = input DTMF signal
% freq = test frequency
% L = length of FIR bandpass filter
% fs = sampling frequency (DEFAULT is 8000)
%
% The signal detectino is done by filtering xx with a length L BPF, hh,
% squaring the output, and comparing with an arbitrary setpoint based on
% the average power of xx.

    if (nargin < 4), fs = 8000; end
    nn = 0:L; %-- specify the integer set n
    hh = (2/L)*cos((2*pi*freq*nn)/fs); %-- specify the filter coefficients 
    ss = (mean(conv(xx,hh).^2) > mean(xx.^2)/5);
end