function [Tn] = comptrapz(a,b,K,f,n)
Y=a2(a,b,K,f,n);
syms x1
Z=@(t) K(x1,t).*Y(t);
%n numero subintervalos, origina n pts
h=(b-a)/n;
%pontos xi
T=[a:h:b];
syms x1
Tn=matlabFunction(trapz(T,Z(T)));

%fazer na command window
% j=[1,3,7,15,31];
%for i=1:5
%comptrapz(0,1,K,f,j(i))
%end