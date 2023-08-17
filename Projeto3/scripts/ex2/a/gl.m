function res=gl(n)
K=@(x,t) (-2*sqrt(x.*t))./(1+x.*t.^2).^2;
f=@(x) x.*sqrt(x)./(1+x);
y=a2(0,1,K,f,n);
syms t h(t1) Knew(t1)
Y=matlabFunction(y(t));
h(t1)= piecewise(0<=t1,Y(t1),t1<0,Y(-t1));
syms x1
Knew(t1)= piecewise(0<=t1,(-sqrt(x1.*t1))./(1+x1.*t1.^2).^2,t1<0,(-sqrt(x1.*(-t1)))./(1+x1.*(t1.^2)).^2);
g2=@(t1) Knew(t1).*h(t1);
res=matlabFunction(aprox(n-1,g2));