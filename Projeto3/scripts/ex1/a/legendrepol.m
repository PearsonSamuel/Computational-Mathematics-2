
function [res] = legendrepol(n)

syms x1

if n == 0
    res = 1;

elseif n == 1
    res = x1;

else
    res = ((2*n-1)/(n))*x1*legendrepol(n-1)-((n-1)/(n))*legendrepol(n-2);

end






