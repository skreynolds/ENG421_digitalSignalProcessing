%%%%%%%%%%%%%%%%%%%%%%%%%%% 3.2 Fur Elise %%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Clear the workspace and any stored variables
clear; clc;

% Load the notes and durations for Treble and Bass for Fur Elise
% from a pre-existing description.
FENOTES;

% Halve the duration of the notes, because I got sick of listening
% to this in its original timing
tdur = tdur/2;
bdur = bdur/2;

% Specify the sampling frequency used for the D-to-A system
fs = 11025;
Ts = 1/fs;

% Synthesize the treble waveform as a combination of sinusoids
xxt = zeros(1,sum(tdur)*fs+1);

n1 = 1;

for kk = 1:length(t)
    
    tone_t = note_adv(t(kk),tdur(kk));
    E = adsr_env(tone_t);
    tone_t = E.*tone_t;
    
    n2 = n1 + length(tone_t) - 1;
    xxt(n1:n2) = xxt(n1:n2) + tone_t;
    n1 = n2;
end

% Synthesize the bass waveform as a combination of sinusoids
xxb = zeros(1,sum(bdur)*fs+1);

n1 = 1;

for kk = 1:length(b)
    
    tone_b = note_adv(b(kk),bdur(kk));
    E = adsr_env(tone_b);
    tone_b = E.*tone_b;
    
    n2 = n1 + length(tone_b) - 1;
    xxb(n1:n2) = xxb(n1:n2) + tone_b;
    n1 = n2;
end

% Create the overall waveform
xx = xxt + xxb;

sound(xx,fs)