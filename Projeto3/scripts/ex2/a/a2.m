function [y]  = a2(a,b,K,f,n)
%n subintervalos, n+1 pontos ti
T=[a:(b-a)/n:b];
W=ones(1,n);
for i=1:n+1 
    Y=T([1:(i-1),(i+1):end]);
    syms x1
    L=matlabFunction(prod((x1-Y)./(T(i)-Y)));
    W(i)=integral(L,a,b);%lista dos pesos
end
M=ones(n+1,n+1);
for i=1:n+1
    M(i,:)=W.*K(T(i),T);
end
%encontrar y(ti)
tildey=linsolve((eye(n+1)+M),transpose(f(T)));
%calcular In
I=sum(W.*K(x1,T)*tildey);
%final
y=matlabFunction(f(x1)-I);
end

%fazer
%K=@(x,t) (-2*sqrt(x.*t))./(1+x.*t.^2).^2
%f=@(x)x.*sqrt(x)./(1+x)
%a2(0,1,K,f,n) com um n qualquer 
