function [l] = repeatPeriod(sequence)
%REPEATPERIOD Cycle detection algorithm
%   Author: Gabriel Nivasch
%   http://www.gabrielnivasch.org/fun/cycle-detection
l = 0;
k = 1;
T = 1;

for n = 2:length(sequence)
    a = sequence(n);
    for i = k:-1:1
        ta = sequence(T(i));
        if abs(a - ta) < eps
            l = n - T(i);
            return;
        elseif a > ta
            break;
        end
    end
    T(i+1) = n;
    k = i + 1;
end
end