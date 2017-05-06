function tones = dtmfdial(nums)
   % DTMFDIAL Create vector of tones which will dial a DTMF
   % touch tone telephone system
   
   % usage: tones = dtmfdial(nums)
   %    nums = vector of numbers ranging from 1 to 12
   %    tones = vector containing the corresponding tones
   
   if (nargin < 1)
       error('DTFMDIAL requires one input');
   end
   
   fs = 8000;   %-- This must be 8000 so dtmfdeco()will work
   
   freq = ([697 697 697 770 770 770 852 852 852 941 941 941;...
            1209 1336 1477 1209 1336 1477 1209 1336 1477 1209 1336 1477]);
   
   
   tone_dur = 0.5;  %-- Specify the duration of the tone
   gap_dur = 0.1;   %-- Specify the duration of the gap
   
   dur = (tone_dur + gap_dur)*ones(1,length(nums)); %-- Total duration
   
   tones = zeros(1,uint16(sum(dur)*fs + 1));    %-- Allocate memory for signal
   
   tt = 0:1/fs:tone_dur;    %-- Specify discrete time sample vector 
   tt_gap = length(0:1/fs:gap_dur); %-- Specify the length of gap vector
   n1 = 1;
   
   for i = 1:length(nums)
       % Specify frequecies for both row and col
       row_freq = freq(1,nums(i));
       col_freq = freq(2,nums(i));
       
       % Build a discrete time signal for tone
       tone = cos(2*pi*row_freq*tt) + cos(2*pi*col_freq*tt);
       
       % Build a gap for the tone
       tone_gap = zeros(1,tt_gap);
       
       % Add the tone to the tones vector
       n2 = n1 + length(tone) - 1;
       tones(n1:n2) = tone;
       n1 = n2;
       
       % Add a pause duration to the tones vector
       n2 = n1 + length(tone_gap) - 1;
       tones(n1:n2) = tone_gap;
       n1 = n2;
   end
end