function res=RK(f,a,alfa,beta,gama,n)
T=10;
h=T/n;
tj=0;
yj=[alfa beta gama];
res=ones(1,n+1);
res(1)=alfa;
F = @(t,y) [y(2) y(3) f(t,y(1),y(2),y(3))];
for j=1:n
    k1=F(tj,yj);
    k2=F(tj+((2*h)/3),yj+((2*h)/3).*k1);
    k3=F(tj+((2*h)/3),yj+((2*h)/3).*k2);
    yj=yj+(h/8)*(2.*k1+3.*k2+3.*k3);
    res(j+1)=yj(1);
    tj=a+j*h;
end

%fazendo f=@(t,y,y1,y2) (-8*(y^2)*y1)-(((4*t)/(1+t^2))*y2)
%RK(f,0,1,0,-2,n)
%comparar com arrayfun(@(t) (1+t^2)^-1,0:10/n:10)
%experimentar com n=1 000 000