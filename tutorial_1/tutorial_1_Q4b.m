%%%%%%%%%%%%%%%%%%%%%%%%% 4 Periodic Waveforms %%%%%%%%%%%%%%%%%%%%%%%%%
clear; clc;

% fundamental frequency
f0 = 1000;
Tmax = 1/f0;

% sampling frequency
fs = 20000;
dur = 2;
t = 0:1/fs:dur;
N_list = [0 1 2 3 4 9];

% Loop creates signal and plays the sound from the signal
for n = N_list
    N = 2*[0:n]+1;
    f = N*f0;
    Z = j./N;
    x = sumcos(f,Z,fs,dur);
    sound(x,fs)
    pause % to progress the code go to the terminal and hit enter
end
