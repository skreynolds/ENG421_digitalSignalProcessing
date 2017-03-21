%%%%%%%%%%%%%%%%%%%%% 2.3 Piano Keyboard %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%--- play_scale.m
clear; clc;
%---
keys =    [40 42 44 45 47 49 51 52];
%--- NOTES: C  D  E  F  G  A  B  C
% key #40 is middle-C
%
dur = 0.25*ones(1,length(keys));
fs = 11025;
xx = zeros(1,sum(dur)*fs+1);

n1 = 1;

for kk = 1:length(keys)
    keynum = keys(kk);
    
    tone = note(keynum,0.25);
    
    n2 = n1 + length(tone) - 1;
    xx(n1:n2) = xx(n1:n2) + tone;
    n1 = n2;
end

sound(xx,fs)