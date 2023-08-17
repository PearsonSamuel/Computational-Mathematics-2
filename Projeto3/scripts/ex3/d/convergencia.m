%estudar a convergência analisando os erros |y(tn)-yn|
% obtidos para diferentes n, bem como o comportamento
%assintótico de e_{n}=|y(tn)-yn|/|y(t2n)-y2n|
function res=convergencia(nit)
y=@(t) (1+t.^2).^-1;
y10=y(10);
f=@(t,y,y1,y2) (-8*(y^2)*y1)-(((4*t)/(1+t^2))*y2);
erro=@(rkn) abs(y10-rkn(end));
en=ones(1,nit+1);
for k=0:nit
    n=20*2^k;
    rkn=RK(f,0,1,0,-2,n);
    rk2n=RK(f,0,1,0,-2,2*n);
    en(k+1)=erro(rkn)/erro(rk2n);
end
res=en;
end
%fazer convergencia(9)
%como parece que lim e_{n}~8=2^3, a ordem parece ser cubica
%Nota: para nit>10 e_{n} começa a variar e a partir de 
%nit=14 e_{n}<1 (erro a subir?? cancelamento subtrativo??)