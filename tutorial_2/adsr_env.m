function E = adsr_env(tone)
% Function produces an Attack, Decay, Sustain, Release envelope
% which we modulate with our signal to provide better sounding tones

    A = linspace(0, 0.6, (length(tone)*0.2)); %rise 20% of signal
    D = linspace(0.6, 0.5,(length(tone)*0.05)); %drop of 5% of signal
    S = linspace(0.5, 0.5,(length(tone)*0.4)); %delay of 40% of signal
    R = linspace(0.5, 0,(length(tone)*0.35)); %drop of 35% of signal
    
    ADSR = [A D S R] ; %make a matrix

    len = length(tone) - length(ADSR); %find out the difference
    
    %concatenates a horrizontal (2) ADSR + the difference of ADSR
    % and the signal
    E = cat(2, ADSR, zeros(1,len));
end