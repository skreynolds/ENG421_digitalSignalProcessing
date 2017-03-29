%%%%%%%%%%%%%%%%%% 4.3 The Bell Sound %%%%%%%%%%%%%%%%%%%%%%%%

% Clear the workspace and any stored variables
clear; clc;

% Play a bell sounds
fc = [110 220 110 110 250 250];
fm = [220 440 220 220 350 350];
Io = [10 5 10 10 5 3];
tau = [2 2 12 0.3 2 1];
dur = [6 6 3 3 5 5];
fsamp = 11025;

for i = 1:length(fc)
    ff = [fc(i) fm(i)];
    xx = bell(ff, Io(i), tau(i), dur(i), fsamp);
    sound(xx,fsamp)
    pause(dur(i)+1)
end

