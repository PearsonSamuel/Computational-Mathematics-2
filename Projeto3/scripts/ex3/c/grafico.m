function res=grafico(n)
T=10;
h=10/n;
f=@(t,y,y1,y2) (-8*(y^2)*y1)-(((4*t)/(1+t^2))*y2);
tlist=0:h:T;
ylist=RK(f,0,1,0,-2,n);
x=linspace(0,10,1000);
y=(1+x.^2).^-1;
plot(tlist,ylist,'r.-','LineWidth',1,'MarkerSize',15)
grid on
hold on
exactsol=arrayfun(@(t) (1+t.^2).^-1,0:h:T);
plot(tlist,exactsol,'g.','MarkerSize',12)
plot(x,y,'c-','LineWidth',1)
hold off
end
%Nota: para h não suficientemente pequeno, divergência

%Para n=10 por ex, ver resultados de RK:
%Valores tão grandes que matlab considera -Inf e dps NaN

%para n=10 milhoes ele demora uns 15 segundos