function key = dtmfdeco(xx,fs)
% DTMFDECO key = dtmfdeco(xx,[fs])
% returns the key number correspoingin to the DTMF waveform, xx.
% fs = sampling freq (DEFAULT = 8000Hz if not specified)
    
    L = 64;
    
    if (nargin < 2), fs = 8000; end;
    tone_pairs = ...
        [697 697 697 770 770 770 852 852 852 941 941 941;
            1209 1336 1477 1209 1336 1477 1209 1336 1477 1209 1336 1477];
    
    for i = 1:length(tone_pairs)
        if (dtmfscor(xx, tone_pairs(1,i), L, fs) ...
                && dtmfscor(xx, tone_pairs(2,i), L, fs))
            key = i;
            return
        end
    end
end