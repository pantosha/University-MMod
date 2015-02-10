function [random] = multcongen()
%MULTCONGEN Multiplicative congruential method
global next
k = 150889;
m = 714025;
next = mod(k*next, m);
random = next/m;
end