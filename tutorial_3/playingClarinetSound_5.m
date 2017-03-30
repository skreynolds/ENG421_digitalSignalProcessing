%%%%%%%%%%%%%%%%%% 5.5 Experiment with Clarinet Sound %%%%%%%%%%%%%%%%%%

% Clear the workspace and any stored variables
clear; clc;

% Set the parameters for the sound
f0 = 290;

% Set the duration of the tone
dur = 2;

% Set the sampling frequency
fsamp = 8000;

% Create the envelopes for the sound
a = (0.1/0.5)*2; s = (0.35/0.5)*2; r = (0.05/0.5)*2;
[Aenv, Ienv] = woodwenv(a, s, r, fsamp);

% Build the discrete time waveform
xx = clarinet(f0, Aenv, Ienv, dur, fsamp);

% Play the sound
sound(xx,fsamp)