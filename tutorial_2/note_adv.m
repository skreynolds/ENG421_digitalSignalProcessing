function tone = note_adv(keynum,dur)
% NOTE Produce a sinusoidal waveform corresponding to a given
% piano key number

% usage: tone = note(keynum, dur)

% tone = the output sinusoidal waveform 
% keynum = the piano keyboard number of the desired note
% dur = the duration (in seconds) of the output note
    
    % Amplitude of the fundamental frequency
    A0 = 0.5;
    
    fs = 11025;
    tt = 0:(1/fs):dur;
    
    if (keynum == 0)
        tone = 0*tt;
    else
        freq0 = 440*2^((keynum-49)/12);
        freq1 = 2*freq0;
        freq2 = 3*freq0;
        
        tone = A0*cos(2*pi*freq0*tt) ...
               + 0.75*A0*cos(2*pi*freq1*tt) ...
               + 0.5*A0*cos(2*pi*freq2*tt);
    end
    
end