K=@(x,t) (-2*sqrt(x.*t))./(1+x.*t.^2).^2 ;
f=@(x)x.*sqrt(x)./(1+x) ;
%nr de pontos é n+1
yreal= @(x) sqrt(x) ;
Y1=a2(0,1,K,f,15);
t=[0:1/15:1];
y=yreal(t);
y1=Y1(t);
erros1=abs(y-y1);
m=[t.' y1.' y2.' erros1.']
