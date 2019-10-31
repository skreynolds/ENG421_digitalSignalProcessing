function [a,b] = signal_detection(tones)
    
    if length(tones) == 0
        a = [];
    else
        a = [1];
    end
    
    b = [];

    i = 1; j = 1; k = 1;

    while(true)
        if tones(i) == 0
            b(k) = i - 1;
            j = i;
            while(true)
                if j == length(tones)
                    return
                else
                    if tones(j) ~= 0
                        k = k + 1;
                        a(k) = j;
                        i = j - 1;
                        break
                    end
                end
                j = j + 1;
            end
        end
        i = i + 1;
    end
end