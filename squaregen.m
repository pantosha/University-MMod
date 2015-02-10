function [random] = squaregen()
%SQUAREGEN Summary of this function goes here
global next
next = mod(fix(next^2/100), 10^4);
random = next/10000;
end