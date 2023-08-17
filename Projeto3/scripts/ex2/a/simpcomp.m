function [Sn] = simpcomp(a,b,K,f,n)
Y=a2(a,b,K,f,n);
syms x1 
Z=@(t) K(x1,t).*Y(t);
%n numero subintervalos, origina n pts
h=(b-a)/n;
%pontos xi
X=[a:h:b];
S=[];
for i=1:n/2
   s=(h/3).*(Z(X(2*i-1))+4*Z(X(2*i))+Z(X(2*i+1)));
   S=[S s];
end
Sn=matlabFunction(sum(S));

%fazer na command window
% j=[2,4,6,10,14,18];
%for i=1:6
%simpcomp(0,1,K,f,j(i))
%end